contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1990]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of struct addrs;
uint256 length;
uint256 percent;

function length() {
    return length
}

function addrs(uint256 arg1) {
    require arg1 < addrs.length
    return addrs[arg1].field_0, addrs[arg1].field_256
}

function percent() {
    return percent
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function sub_c35c9314(?) {
    require owner == msg.sender
    require arg1 < addrs.length
    require percent - addrs[arg1].field_256 <= percent
    require arg3 >= 0
    require arg3 + percent - addrs[arg1].field_256 <= 1000
    require arg1 < addrs.length
    require percent - addrs[arg1].field_256 <= percent
    require arg3 >= 0
    percent = arg3 + percent - addrs[arg1].field_256
    require arg1 < addrs.length
    addrs[arg1].field_0 = arg2
    addrs[arg1].field_256 = arg3
}

function sub_a4d396ca(?) {
    require owner == msg.sender
    require arg2 + percent >= percent
    require arg2 + percent <= 1000
    require arg2 + percent >= percent
    percent += arg2
    addrs.length++
    if not addrs.length <= addrs.length + 1:
        idx = 2 * addrs.length + 1
        while 2 * addrs.length > idx:
            addrs[idx].field_0 = 0
            addrs[idx].field_256 = 0
            idx = idx + 2
            continue 
    addrs[addrs.length].field_0 = arg1
    addrs[addrs.length].field_256 = arg2
    length = addrs.length
}

function collect(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    idx = 0
    while idx < addrs.length:
        if addrs[idx].field_256:
            require addrs[idx].field_256
            require arg1 * addrs[idx].field_256 / addrs[idx].field_256 == arg1
        require idx < addrs.length
        mem[0] = 2
        call addrs[idx].field_0 with:
           value arg1 * addrs[idx].field_256 / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}

function delAddr(uint256 arg1) {
    require owner == msg.sender
    require arg1 < addrs.length
    require percent - addrs[arg1].field_256 <= percent
    percent -= addrs[arg1].field_256
    idx = arg1
    while idx < addrs.length - 1:
        require idx + 1 < addrs.length
        require idx < addrs.length
        mem[0] = 2
        addrs[idx].field_0 = addrs[idx + 1].field_0
        addrs[idx].field_256 = addrs[idx + 1].field_256
        idx = idx + 1
        continue 
    addrs.length--
    if not addrs.length <= addrs.length - 1:
        idx = 2 * addrs.length - 1
        while 2 * addrs.length > idx:
            addrs[idx].field_0 = 0
            addrs[idx].field_256 = 0
            idx = idx + 2
            continue 
    length = addrs.length
}



}
