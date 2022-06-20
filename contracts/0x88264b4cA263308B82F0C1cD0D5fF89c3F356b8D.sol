contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() {
    if not code.data[686 len 20]:
        revert with 0, 32, 36, code.data[638 len 36], mem[264 len 28]
    stor0 = code.data[686 len 20]
    return code.data[281 len 357]
}



}
