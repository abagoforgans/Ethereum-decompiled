contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() {
    mem[96 len -3164] = code.data[3570 len -3164]
    mem[64] = -3068
    stor4[address(msg.sender)] = mem[96]
    stor3 = mem[96]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = mem[191 len 1]
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[406 len 3164]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 stor4;
mapping of uint256 stor5;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    stor5[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor4[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= stor4[address(msg.sender)]
    stor4[address(msg.sender)] -= arg2
    require stor4[address(arg1)] + arg2 >= stor4[address(arg1)]
    stor4[address(arg1)] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor5[address(arg1)][address(msg.sender)] >= arg3
    require stor4[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= stor4[address(arg1)]
    stor4[address(arg1)] -= arg3
    require stor4[address(arg2)] + arg3 >= stor4[address(arg2)]
    stor4[address(arg2)] += arg3
    require arg3 <= stor5[address(arg1)][address(msg.sender)]
    stor5[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    stor5[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                if ext_call.success:
                    return 1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return 1
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(arg1):
            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
            if ext_call.success:
                return 1
    revert
}



}
