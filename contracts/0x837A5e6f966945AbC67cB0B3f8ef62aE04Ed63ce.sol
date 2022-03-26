contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor4 = 10^18
    require not msg.value
    return code.data[97 len 3516]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 from;
mapping of uint256 fromName;
array of struct meta;
uint256 fee;

function fromName(bytes32 arg1) {
    require fromName[arg1] - 1 < meta.length
    return fromName[arg1] - 1, meta[stor2[arg1] - 1].field_0, meta[stor2[arg1] - 1].field_512
}

function badgeCount() {
    return meta.length
}

function meta(uint256 arg1, bytes32 arg2) {
    require arg1 < meta.length
    return stor[(4 * arg1) + ('name', 'meta', 3) + 3][arg2].field_0
}

function owner() {
    return owner
}

function fromAddress(address arg1) {
    require from[address(arg1)] - 1 < meta.length
    return from[address(arg1)] - 1, meta[stor1[address(arg1)] - 1].field_256, meta[stor1[address(arg1)] - 1].field_512
}

function badge(uint256 arg1) {
    require arg1 < meta.length
    return meta[arg1].field_0, meta[arg1].field_256, meta[arg1].field_512
}

function fee() {
    return fee
}

function _fallback() payable {
    revert 
}

function setFee(uint256 arg1) {
    if msg.sender == owner:
        fee = arg1
}

function setOwner(address arg1) {
    if msg.sender == owner:
        emit NewOwner(owner, arg1);
        owner = arg1
}

function drain() {
    if owner != msg.sender:
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setMeta(uint256 arg1, bytes32 arg2, bytes32 arg3) {
    require arg1 < meta.length
    if meta[arg1].field_512 == msg.sender:
        require arg1 < meta.length
        stor[(4 * arg1) + ('name', 'meta', 3) + 3][arg2].field_0 = arg3
        emit MetaChanged(arg3, arg1, arg2);
}

function unregister(uint256 arg1) {
    if msg.sender == owner:
        require arg1 < meta.length
        emit Unregistered(meta[arg1].field_256, arg1);
        from[stor3[arg1].field_0] = 0
        fromName[stor3[arg1].field_256] = 0
        meta[arg1].field_0 = 0
        meta[arg1].field_256 = 0
        meta[arg1].field_512 = 0
}

function register(address arg1, bytes32 arg2) payable {
    if msg.value < fee:
        return 0
    if from[address(arg1)]:
        return 0
    if fromName[arg2]:
        return 0
    meta.length++
    if not meta.length <= meta.length + 1:
        idx = 4 * meta.length + 1
        while 4 * meta.length > idx:
            meta[idx].field_0 = 0
            meta[idx].field_256 = 0
            meta[idx].field_512 = 0
            idx = idx + 4
            continue 
    meta[meta.length].field_0 = arg1
    meta[meta.length].field_256 = arg2
    meta[meta.length].field_512 = msg.sender
    from[address(arg1)] = meta.length
    fromName[arg2] = meta.length
    emit Registered(arg1, arg2, meta.length - 1);
    return 1
}

function registerAs(address arg1, bytes32 arg2, address arg3) payable {
    if msg.value < fee:
        return 0
    if from[address(arg1)]:
        return 0
    if fromName[arg2]:
        return 0
    meta.length++
    if not meta.length <= meta.length + 1:
        idx = 4 * meta.length + 1
        while 4 * meta.length > idx:
            meta[idx].field_0 = 0
            meta[idx].field_256 = 0
            meta[idx].field_512 = 0
            idx = idx + 4
            continue 
    meta[meta.length].field_0 = arg1
    meta[meta.length].field_256 = arg2
    meta[meta.length].field_512 = arg3
    from[address(arg1)] = meta.length
    fromName[arg2] = meta.length
    emit Registered(arg1, arg2, meta.length - 1);
    return 1
}



}
