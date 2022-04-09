contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 4995]




// =====================  Runtime code  =====================


const regex = Array(len=47, data='[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-_]', '+\.[a-zA-Z]{2,}', Mask(120, -256, '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-_]', '+\.[a-zA-Z]{2,}') << 256)


function _fallback() payable {
    revert
}

function matches(string arg1) {
    if 0 >= arg1.length:
        return 0
    require 0 < arg1.length
    ...  # unusual jump ('remco jump', 591), couldn't decompile, sorry
}



}
