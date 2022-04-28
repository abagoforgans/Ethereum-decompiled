contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor5 = 0
    mem[96 len -1705] = code.data[2164 len -1705]
    mem[64] = -1609
    stor1 = mem[108 len 20]
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = block.timestamp
    stor0 = msg.sender
    stor5 = 1
    return code.data[459 len 1705]
}



// =====================  Runtime code  =====================


const getVersion = 1


address owner;
address sub_977c733cAddress;
address sub_15c881ccAddress;
array of uint256 sub_28d1120e;
uint256 sub_7cd87ba2;
uint8 state;

function sub_15c881cc(?) {
    return sub_15c881ccAddress
}

function getState() {
    require state <= 2
    return state
}

function sub_28d1120e(?) {
    return sub_28d1120e[0 len sub_28d1120e.length]
}

function sub_7cd87ba2(?) {
    return sub_7cd87ba2
}

function getOwner() {
    return owner
}

function sub_977c733c(?) {
    return sub_977c733cAddress
}

function _fallback() payable {
    require state <= 2
    require not state
}

function sub_0d04ce24(?) {
    require arg1 != owner
    require state <= 2
    require state != 2
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_15c881ccAddress = arg1
    state = 2
    emit PostCompleted(owner, arg1);
}



}
