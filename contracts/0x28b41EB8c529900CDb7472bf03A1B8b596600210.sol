contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
address transferAgentAddress;

function transferAgent() {
    return transferAgentAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setAgent(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are NOT Authorized'
    require arg1
    transferAgentAddress = arg1
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if transferAgentAddress != msg.sender:
        revert with 0, 'You are Not Authorized'
    require arg1
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_1d483607(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Invalid address'
    if msg.value <= arg2:
        revert with 0, 'Insufficient funds'
    if arg2 <= 0:
        revert with 0, 'Please provide some higher value'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= msg.value
    emit 0xd85ff54c: address(msg.sender), address(arg1), arg2, msg.value - arg2
    return 1
}



}
