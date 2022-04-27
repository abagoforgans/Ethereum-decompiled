contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 700000 * 10^18
    stor2 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[2063 len 20]
    require code.data[2095 len 20]
    stor3 = code.data[2063 len 20]
    stor4 = code.data[2095 len 20]
    return code.data[216 len 1835]
}



// =====================  Runtime code  =====================


const startDate = 1514179750

const rate = 700

const getNow = block.timestamp

const endDate = (420984 * 24 * 3600)


uint8 stor0; offset 160
address owner;
uint256 sub_c3f688d6;
uint256 sold;
address walletAddress;
address tokenAddress;

function sold() {
    return sold
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function sub_c3f688d6(?) {
    return sub_c3f688d6
}

function token() {
    return tokenAddress
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    require not stor0
    require 1514179750 <= block.timestamp
    require block.timestamp <= 420984 * 24 * 3600
    require msg.value >= 5 * 10^15
    if msg.value:
        require msg.value
        require 700 * msg.value / msg.value == 700
    require (700 * msg.value) + sold >= sold
    require (700 * msg.value) + sold <= sub_c3f688d6
    require (700 * msg.value) + sold >= sold
    sold += 700 * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), msg.sender, 700 * msg.value
    require ext_call.success
    emit TokenPurchase(msg.sender, msg.value, 700 * msg.value);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
