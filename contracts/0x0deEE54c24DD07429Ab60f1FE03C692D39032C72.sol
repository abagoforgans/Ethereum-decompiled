contract main {




// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
array of uint256 name;
array of uint256 sub_0b808f3b;
array of uint256 description;
array of uint256 url;
array of uint256 meta;
uint256 area;
uint8 status; offset 160
uint8 sub_73ec40b5; offset 168
uint128 stor8; offset 160
address sub_69817736Address;
uint256 stor8;
address previousVersionAddress;
address newVersionAddress;
array of address owners;
mapping of uint8 sub_6c67180f;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1])
}

function name() {
    return name[0 len name.length]
}

function sub_0b808f3b(?) {
    return sub_0b808f3b[0 len sub_0b808f3b.length]
}

function status() {
    require status <= 2
    return status
}

function newVersion() {
    return newVersionAddress
}

function area() {
    return area
}

function url() {
    return url[0 len url.length]
}

function pendingContractOwner() {
    return pendingContractOwner
}

function sub_69817736(?) {
    return sub_69817736Address
}

function sub_6c67180f(?) {
    return uint16(sub_6c67180f[arg1])
}

function description() {
    return description[0 len description.length]
}

function sub_73ec40b5(?) {
    require sub_73ec40b5 <= 1
    return sub_73ec40b5
}

function sub_c0090b71(?) {
    return uint8(sub_6c67180f[address(arg1)]), uint8(sub_6c67180f[address(arg1)])
}

function meta() {
    return meta[0 len meta.length]
}

function contractOwner() {
    return contractOwner
}

function previousVersion() {
    return previousVersionAddress
}

function _fallback() payable {
    revert
}

function forceChangeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    contractOwner = arg1
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function sub_753cf778(?) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    require status <= 2
    if status:
        return 0
    sub_69817736Address = arg1
    status = 1
    Mask(96, 0, stor8.field_160) = 0
    emit 0x76c0bad3: address(this.address), 1
    return 1
}

function sub_99293aa4(?) {
    require status <= 2
    if status == 1:
        if sub_69817736Address != msg.sender:
            emit Error(Array(len=19, data='Unathorized caller.'));
        else:
            Mask(168, 0, stor8.field_0) = 0
            emit 0x76c0bad3: address(this.address), 0
        return 0
    else:
        return 0
}

function migrate(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    require ext_code.size(arg1)
    call arg1.0xdb3d1ccf with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        return 0
    newVersionAddress = arg1
    status = 2
    emit Migrated(arg1);
    return 1
}

function setUrl(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    while idx < owners.length:
        mem[0] = 11
        if address(owners[idx]) != msg.sender:
            idx = idx + 1
            continue 
        url.length = (2 * arg1.length) + 1
        s = sha3(5)
        idx = 128
        while arg1.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = sha3(5) + (Mask(251, 0, arg1.length + 31) >> 5)
        while sha3(5) + (url.length + 31 / 32) > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_c3de1bf5(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require status <= 2
    if status != 1:
        return 0
    if sub_69817736Address != msg.sender:
        emit Error(Array(len=19, data='Unathorized caller.'));
        return 0
    owners.length = 0
    idx = 0
    while owners.length > idx:
        uint256(owners[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[32] = 12
        uint16(sub_6c67180f[mem[(32 * idx) + 140 len 20]]) = mem[(32 * idx) + (32 * arg1.length) + 190 len 2]
        require idx < arg1.length
        owners.length++
        mem[0] = 11
        address(owners[owners.length]) = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    Mask(168, 0, stor8.field_0) = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit 0x39d5a612: address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg2.length) + (32 * arg1.length) + floor32(arg1.length) + 256 len (32 * arg1.length) - floor32(arg1.length)])
    require status <= 2
    emit 0x76c0bad3: address(this.address), status
    return 1
}



}
