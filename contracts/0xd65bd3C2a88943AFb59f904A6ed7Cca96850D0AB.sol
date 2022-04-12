contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[87 len 2801]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setMarketplace(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setDisputed(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require ext_code.size(stor1)
    call stor1.0xf5a3f4af with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg2.length) + 128] = 0xd818ecee00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = arg1
    mem[ceil32(arg2.length) + 164] = 64
    mem[ceil32(arg2.length) + 196] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 228] = mem[128]
        mem[ceil32(arg2.length) + 260 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    require ext_code.size(stor1)
    call stor1.0xd818ecee with:
         gas gas_remaining - 710 wei
        args address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + 228 len arg2.length])
    require ext_call.success
}

function resolveDisputeBuyer(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(stor1)
    call stor1.0xf5a3f4af with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg1.length) + 128] = 0x90d16b3000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = arg2
    mem[ceil32(arg1.length) + 164] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 228] = mem[128]
        mem[ceil32(arg1.length) + 260 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(stor1)
    call stor1.0x90d16b30 with:
         gas gas_remaining - 710 wei
        args address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + 228 len arg1.length])
    require ext_call.success
}

function resolveDisputeSeller(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(stor1)
    call stor1.0xf5a3f4af with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg1.length) + 128] = 0xac3c27cf00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = arg2
    mem[ceil32(arg1.length) + 164] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 228] = mem[128]
        mem[ceil32(arg1.length) + 260 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(stor1)
    call stor1.0xac3c27cf with:
         gas gas_remaining - 710 wei
        args address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + 228 len arg1.length])
    require ext_call.success
}



}
