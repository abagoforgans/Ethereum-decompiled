contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor4;

function _fallback() payable {
    stor1 = 8760 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor2 = block.timestamp
    stor4 = 0x8d32b0da63e2c3bcf8019c9c5d849d7a9d791e6
    return code.data[103 len 661]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 startTime;
uint256 stor3;
address tokenAddress;

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function withdraw() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor3 = ext_call.return_data[0]
    require stor1 + startTime < block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, stor3
    require ext_call.success
}



}
