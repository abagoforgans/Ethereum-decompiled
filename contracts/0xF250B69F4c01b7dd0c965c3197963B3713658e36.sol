contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -1120] = code.data[1591 len -1120]
    mem[64] = -1024
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[471 len 1120]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 providerName;
array of uint256 description;

function providerName() {
    return providerName[0 len providerName.length]
}

function description() {
    return description[0 len description.length]
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function setDebt(uint256 arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.setDebt(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}



}
