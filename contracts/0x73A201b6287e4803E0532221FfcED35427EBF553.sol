contract main {


// =======================  Init code  ======================


uint128 stor0; offset 168
uint128 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    Mask(88, 0, stor0.field_168) = 0
    stor2 = 0
    require not msg.value
    require code.data[2549 len 20]
    require code.data[2569 len 32] > block.timestamp
    address(stor0.field_0) = code.data[2549 len 20]
    stor1 = code.data[2569 len 32]
    return code.data[271 len 2266]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address walletAddress;
uint256 endTime;
uint256 sub_74dc5d05;

function sub_30bfb001(?) {
    return bool(uint8(stor0.field_168))
}

function endTime() {
    return endTime
}

function wallet() {
    return walletAddress
}

function sub_74dc5d05(?) {
    return sub_74dc5d05
}

function sub_a536395d(?) {
    return bool(uint8(stor0.field_160))
}

function setWallet() payable {
    require not uint8(stor0.field_160)
    require msg.sender == walletAddress
    Mask(96, 0, stor0.field_160) = 1
    walletAddress = 0xce19b42f3b29a36ec8fa80c815c9215fcf3b2ade
}

function transferTokens(address arg1, address arg2, uint256 arg3) payable {
    require msg.sender == walletAddress
    if not uint8(stor0.field_160):
        require endTime >= block.timestamp
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg3
    require ext_call.success
}

function transferEth(address arg1, uint256 arg2) payable {
    require msg.sender == walletAddress
    require arg1
    require eth.balance(this.address) >= arg2
    require arg1 != this.address
    if not uint8(stor0.field_160):
        require endTime >= block.timestamp
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit ContractEthTransfer(arg2, arg1);
}

function _fallback() payable {
    require msg.value
    require eth.balance(this.address) <= 5 * 10^18
    require not uint8(stor0.field_168)
    emit ContractEthReceived(msg.value, msg.sender);
    if eth.balance(this.address) == 5 * 10^18:
        Mask(88, 0, stor0.field_168) = 1
        if not eth.balance(this.address):
            call 0xeb0199f3070e86ea6df6e3b4a7862c28a7574be0 with:
                 gas 2300 wei
            require ext_call.success
            require sub_74dc5d05 >= sub_74dc5d05
        require eth.balance(this.address)
        require 5 * eth.balance(this.address) / eth.balance(this.address) == 5
        call 0xeb0199f3070e86ea6df6e3b4a7862c28a7574be0 with:
           value 5 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require sub_74dc5d05 + (5 * eth.balance(this.address) / 100) >= sub_74dc5d05
        sub_74dc5d05 += 5 * eth.balance(this.address) / 100
}



}
