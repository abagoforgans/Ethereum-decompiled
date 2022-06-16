contract main {




// =====================  Runtime code  =====================


const getB = eth.balance(this.address)


address owner;
address erc20Address;
uint256 min_value;
uint256 sub_fb05fff7;
uint8 stor4;

function erc20() {
    return erc20Address
}

function owner() {
    return owner
}

function min_value() {
    return min_value
}

function state() {
    return bool(stor4)
}

function sub_fb05fff7(?) {
    return sub_fb05fff7
}

function purchase() payable {
  stop
}

function _fallback() payable {
    revert
}

function getReward(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2
    return (80 * arg1 / arg2)
}

function setState(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You aren't my master'
    stor4 = uint8(arg1)
}

function setERC20(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You aren't my master'
    erc20Address = arg1
}

function sub_04fbcabd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You aren't my master'
    if arg1 <= 0:
        revert with 0, 'rate shouble be > 0'
    sub_fb05fff7 = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You aren't my master'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function canWithdraw() {
    require ext_code.size(erc20Address)
    staticcall erc20Address.0x4634d81c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 10^15:
        return 0
    return 1
}

function sub_10c55725(?) {
    require ext_code.size(erc20Address)
    staticcall erc20Address.0x997664d7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < ext_call.return_data[0]:
        revert with 0, 'PayoutPool error'
    return (eth.balance(this.address) - ext_call.return_data[0])
}

function withdraw() {
    require ext_code.size(erc20Address)
    staticcall erc20Address.0x4634d81c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 10^15:
        revert with 0, 'your dividends is not enough'
    require ext_code.size(erc20Address)
    staticcall erc20Address.0x4634d81c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20Address)
    call erc20Address.0xa0afc504 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}

function bet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4:
        revert with 0, 'contract is not available!'
    if arg1 < 1:
        revert with 0, 'num must be between 1 and 100'
    if arg1 > 100:
        revert with 0, 'num must be between 1 and 100'
    if msg.value < min_value:
        revert with 0, 'value must be >= 0.001 ether'
    require arg1
    require ext_code.size(erc20Address)
    staticcall erc20Address.0x997664d7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < ext_call.return_data[0]:
        revert with 0, 'PayoutPool error'
    if 80 * msg.value / arg1 >= eth.balance(this.address) - ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'I'm sorry for your value is too much so that i don't have enough value pay for you!'
    require sub_fb05fff7
    require ext_code.size(erc20Address)
    staticcall erc20Address.0xdd62ed3e with:
            gas gas_remaining wei
           args owner, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < msg.value / sub_fb05fff7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'I don't have tokens,Please let master purchase!'
    require ext_code.size(erc20Address)
    call erc20Address.0x23b872dd with:
         gas gas_remaining wei
        args owner, msg.sender, msg.value / sub_fb05fff7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'There is somethings to failed!'
    require ext_code.size(erc20Address)
    call erc20Address.0xc7e69472 with:
         gas gas_remaining wei
        args (msg.value / 5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (2 * block.timestamp % 100) + 1 > arg1:
        require sub_fb05fff7
        emit 0x783fd75f: msg.value, 0, msg.value / sub_fb05fff7, msg.sender
    else:
        call msg.sender with:
           value 80 * msg.value / arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_fb05fff7
        emit 0x783fd75f: msg.value, 80 * msg.value / arg1, msg.value / sub_fb05fff7, msg.sender
}



}
