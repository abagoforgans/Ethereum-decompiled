contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 756]




// =====================  Runtime code  =====================


address stor0;

function owned() {
    stor0 = msg.sender
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor0)
}

function Withdrawl(address arg1, uint256 arg2) {
    if msg.sender == stor0:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
}

function sub_80dfa405(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = msg.value
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0xde53cc8c: Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]), msg.value
}



}
