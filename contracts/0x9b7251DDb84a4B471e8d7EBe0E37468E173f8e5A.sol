contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    mem[128] = 'Kowig9jmmCiHzQtNpLAik8YzN5bxwM16'
    mem[160] = 'yyjF61jBIReo7KOKMhhrkzMXAfP1gCCX'
    mem[192] = 'dzJnO0CeOsChq9UTl/A+GjaHIh+jm+'
    stor0.length = 189
    s = 0
    idx = 128
    while 222 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[346 len 402]
}



// =====================  Runtime code  =====================


array of uint256 html;

function html() {
    return html[0 len html.length]
}

function _fallback() payable {
    revert
}



}
