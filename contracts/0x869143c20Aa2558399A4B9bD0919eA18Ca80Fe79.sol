contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = 1800
    require not msg.value
    return code.data[85 len 2979]
}



// =====================  Runtime code  =====================


const decimals = 18


address owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
uint256 RATE;

function RATE() {
    return RATE
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_08f0b868(?) {
    stor1[stor0] = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function _fallback() payable {
    require msg.value > 0
    stor1[address(msg.sender)] += msg.value * RATE
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value > 0
    stor1[address(msg.sender)] += msg.value * RATE
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require stor1[address(msg.sender)] >= arg2
    require stor1[address(arg1)] + arg2 > stor1[address(arg1)]
    stor1[address(msg.sender)] -= arg2
    stor1[address(arg1)] += arg2
    require stor1[address(msg.sender)] + stor1[address(arg1)] == stor1[address(msg.sender)] + stor1[address(arg1)]
}

function transferForm(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require stor1[address(arg1)] >= arg3
    require stor1[address(arg2)] + arg3 > stor1[address(arg2)]
    stor1[address(arg1)] -= arg3
    stor1[address(arg2)] += arg3
    require stor1[address(arg1)] + stor1[address(arg2)] == stor1[address(arg1)] + stor1[address(arg2)]
    return 1
}



}
