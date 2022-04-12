contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1556 len 20]
    return code.data[112 len 1432]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 initial_time;
mapping of uint8 stor3;
mapping of uint256 unlock_times;
mapping of uint256 stor5;
uint256 stor5B8C;
uint256 stor1A1E;
uint256 stor2E17;
uint256 stor3EEC;
uint256 stor8983;
uint256 stor91DA;
uint256 storA9BC;

function unlock_times(uint256 arg1) {
    return unlock_times[arg1]
}

function unlocked(uint256 arg1) {
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function initial_time() {
    return initial_time
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function unlock(uint256 arg1) {
    require bool(stor3[arg1]) != 1
    require block.timestamp >= initial_time + unlock_times[arg1]
    require stor5[arg1]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, stor5[arg1]
    require ext_call.success
    stor3[arg1] = 1
}

function init() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require not initial_time
    initial_time = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor5B8C = ext_call.return_data[0] / 5
    stor5[1] = ext_call.return_data[0] / 5
    stor8983 = ext_call.return_data[0] / 5
    storA9BC = ext_call.return_data[0] / 5
    stor3EEC = ext_call.return_data[0] / 5
    unlock_times[0] = 4320 * 24 * 3600
    unlock_times[1] = 8640 * 24 * 3600
    stor91DA = 17280 * 24 * 3600
    stor2E17 = 25920 * 24 * 3600
    stor1A1E = 34560 * 24 * 3600
}



}
