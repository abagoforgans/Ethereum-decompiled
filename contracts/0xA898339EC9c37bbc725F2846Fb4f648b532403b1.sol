contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor2 = 0xa73475b29ce6bde780160db5433f4eae486bda5b
    stor3 = 449844 * 3600
    stor4 = 200000000 * 10^18
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xf8c8c211e976cf65ec8f01b7c70021a3b8bf5575
    return code.data[287 len 2412]
}



// =====================  Runtime code  =====================


const tokenAddress = 0xf8c8c211e976cf65ec8f01b7c70021a3b8bf5575


address owner;
address stor1;
address walletAddress;
uint256 lockupDate;
uint256 sub_0e2d9627;

function sub_0e2d9627(?) {
    return sub_0e2d9627
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function lockupDate() {
    return lockupDate
}

function _fallback() payable {
    revert
}

function sub_37cbafdf(?) {
    require msg.sender == owner
    lockupDate = arg1
}

function sub_db7cb4c4(?) {
    require msg.sender == owner
    sub_0e2d9627 = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_88ce46c5(?) {
    if block.timestamp - lockupDate / 720 * 24 * 3600 >= 100:
        return 0
    if not sub_0e2d9627:
        return ((100 * sub_0e2d9627) - (block.timestamp - lockupDate / 720 * 24 * 3600 * sub_0e2d9627) / 100)
    require sub_0e2d9627
    require (100 * sub_0e2d9627) - (block.timestamp - lockupDate / 720 * 24 * 3600 * sub_0e2d9627) / sub_0e2d9627 == -(block.timestamp - lockupDate / 720 * 24 * 3600) + 100
    return ((100 * sub_0e2d9627) - (block.timestamp - lockupDate / 720 * 24 * 3600 * sub_0e2d9627) / 100)
}

function withdraw() {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.timestamp - lockupDate / 720 * 24 * 3600 >= 100:
        require ext_call.return_data[0] > 0
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args walletAddress, ext_call.return_data[0]
    else:
        if sub_0e2d9627:
            require sub_0e2d9627
            require (100 * sub_0e2d9627) - (block.timestamp - lockupDate / 720 * 24 * 3600 * sub_0e2d9627) / sub_0e2d9627 == -(block.timestamp - lockupDate / 720 * 24 * 3600) + 100
        require ext_call.return_data[0] > (100 * sub_0e2d9627) - (block.timestamp - lockupDate / 720 * 24 * 3600 * sub_0e2d9627) / 100
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args walletAddress, ext_call.return_data[0] - ((100 * sub_0e2d9627) - (block.timestamp - lockupDate / 720 * 24 * 3600 * sub_0e2d9627) / 100)
    require ext_call.success
}



}
