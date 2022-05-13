contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 notice;
uint256 start;
uint256 end;
uint256 cap;
uint8 stor6;

function cap() {
    return cap
}

function owner() {
    return owner
}

function live() {
    return bool(stor6)
}

function notice() {
    return notice[0 len notice.length]
}

function start() {
    return start
}

function newOwner() {
    return newOwner
}

function end() {
    return end
}

function changeOwner(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    owner = msg.sender
    newOwner = 0
}

function setNotice(string arg1) {
    require owner == msg.sender
    notice[] = Array(len=arg1.length, data=arg1[all])
}

function init(uint256 arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    start = arg1
    end = arg2
    cap = arg3
}

function softCap(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= block.timestamp
    require arg1 >= start
    require arg1 <= end
    end = arg1
}

function withdraw() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawSome(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundToken(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function _fallback() payable {
    require block.timestamp >= start
    if block.timestamp > end:
        require stor6
        stor6 = 0
        emit EndSale()
    else:
        if eth.balance(this.address) <= cap:
            if not stor6:
                stor6 = 1
                emit StartSale()
        else:
            require stor6
            stor6 = 0
            emit EndSale()
    emit EtherIn(msg.sender, msg.value);
}

function withdrawToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
