contract main {




// =====================  Runtime code  =====================


const version = '0.0.1'


uint8 stor0;
address owner; offset 8
address masterAddress;
mapping of address address;

function isStopped() {
    return bool(stor0)
}

function owner() {
    return owner
}

function getAddress(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return address[arg1[all]]
}

function master() {
    return masterAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function isMaster() {
    return (msg.sender == masterAddress)
}

function stop() {
    require msg.sender == owner
    emit Stopped()
    stor0 = 1
}

function start() {
    require msg.sender == owner
    emit Started()
    stor0 = 0
}

function sub_5e12df07(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit 0xda641567: masterAddress, arg1
    masterAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0b19ee64(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if masterAddress != msg.sender:
        require msg.sender == owner
    require not stor0
    require arg1.length > 0
    address[arg1[all]] = 0
    emit 0x800870b5: Array(len=arg1.length, data=arg1[all])
}

function setAddress(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if masterAddress != msg.sender:
        require msg.sender == owner
    require not stor0
    require arg1.length > 0
    address[arg1[all]] = arg2
    emit SetAddress(Array(len=arg1.length, data=arg1[all]), address(arg2));
}

function sub_9347a33b(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if masterAddress != msg.sender:
        require msg.sender == owner
    require not stor0
    require arg1.length > 0
    require arg2.length > 0
    require not address[arg2[all]]
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 2
    address[arg2[all]] = arg3
    address[arg1[all]] = 0
    mem[ceil32(arg1.length) + 192] = arg2.length
    mem[ceil32(arg1.length) + 224 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 224] = 0
    emit 0x6e121761: 64, ceil32(arg1.length) + 96, arg1.length, arg1[all], 0, mem[arg1.length + 224 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
}



}
