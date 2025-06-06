<template>
    <div :class='{"color-picker": true, "flex-grow": grow}'>
        <slot></slot>
        <div class="color-input-wrapper">
            <input type="text" v-model="inputColor" maxlength="7" class="color-input-input"  @input="onInputChanged" />
        </div>

        <div class="color-picker-wrapper">
            <color-picker v-model="color" :width="200" :height="200" @color-change="onChanged"></color-picker>
        </div>
    </div>
</template>

<script>
import ColorPicker from 'vue-color-picker-wheel';

function throttle(f, delay = 0, ensure = false) {
  let lastCall = Number.NEGATIVE_INFINITY;
  let wait;
  let handle;
  return (...args) => {
    wait = lastCall + delay - Date.now();
    clearTimeout(handle);
    if (wait <= 0 || ensure) {
      handle = setTimeout(() => {
        f(...args);
        lastCall = Date.now();
      }, wait);
    }
  };
}

// function debounce(func, timeout = 300){
//   let timer;
//   return (...args) => {
//     clearTimeout(timer);
//     timer = setTimeout(() => { func.apply(this, args); }, timeout);
//   };
// }

function hexToRgb(hex) {
  var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
  return result ? {
    r: parseInt(result[1], 16),
    g: parseInt(result[2], 16),
    b: parseInt(result[3], 16)
  } : null;
}

function componentToHex(c) {
  var hex = c.toString(16);
  return hex.length == 1 ? "0" + hex : hex;
}

function rgbToHex(r, g, b) {
  return "#" + componentToHex(r) + componentToHex(g) + componentToHex(b);
}

export default {
    props: ['grow', 'type'],
    emits: ['select'],
    components: {
        ColorPicker
    },
    data() {
        return {
            color: null,
            inputColor : null,
        }
    },
    created() {
        this.throttledChange = throttle((col) => {
            if(col[0] != '#') {
                col = '#' + col;
            }

            const rgb = hexToRgb(col);

            if(rgb) {
                this.color = col;
                this.inputColor = col;
                this.$emit('select', [rgb.r, rgb.g, rgb.b]);
            }
        }, 100, true);
        
        this.setInitialColor();
    },
    mounted() {
        this.setInitialColor();
    },
    methods: {
        onChanged(c) {
            this.throttledChange(c)
        },
        onInputChanged(c) {
            this.throttledChange(c.target.value)
        },
        setInitialColor() {
            let curColor = this.installedUpgrades[this.type];

            if(Array.isArray(curColor)) {
                this.color = rgbToHex(curColor[0], curColor[1], curColor[2]);
            } else {
                this.color = '#ff0000';
            }
        }
    },
    computed: {
        installedUpgrades: function() {
            return this.$store.state.installedUpgrades;
        },
    }
}
</script>

<style scoped>
    .color-picker-wrapper {
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .color-picker {
        height: calc(100% - 60px);
        display: flex;
        flex-direction: column;
        gap: 10px;
        overflow-y: auto;
        overflow-x: hidden;
    }

    .flex-grow {
        flex-grow: 1;
    }

    .color-input-input:active {
        outline: none;
    }
    .color-input-input {
        background: #5d5d5d;
        border: 1px solid #000;
        color: #fff;
        outline: none;
        padding: 5px 3px;
        width: 63px;
        letter-spacing: 1px;
        font-family: 'Courier New', Courier, monospace;
    }

    .color-input-wrapper {
        text-align: center;
    }
</style>