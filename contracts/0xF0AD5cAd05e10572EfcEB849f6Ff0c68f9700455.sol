contract main {




// =====================  Runtime code  =====================


const MIN_REGISTRATION_DURATION = (672 * 24 * 3600)


address owner;
address stor1;
address stor2;
uint256 minCommitmentAge;
uint256 maxCommitmentAge;
mapping of uint256 commitments;

function commitments(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return commitments[arg1]
}

function minCommitmentAge() {
    return minCommitmentAge
}

function owner() {
    return owner
}

function maxCommitmentAge() {
    return maxCommitmentAge
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPriceOracle(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor2 = arg1
    emit NewPriceOracle(stor2);
}

function commit(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require commitments[arg1] + maxCommitmentAge < block.timestamp
    commitments[arg1] = block.timestamp
}

function setCommitmentAges(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    minCommitmentAge = arg1
    maxCommitmentAge = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('supportsInterface(bytes4)')):
        return True
    return (Mask(32, 224, arg1) == Mask(32, 224, sha3('rentPrice(string,uint256)') xor sha3('available(string)') xor sha3(0x296d616b65436f6d6d69746d656e7428737472696e672c616464726573732c62797465733332) xor sha3('commit(bytes32)') xor sha3(0xfe726567697374657228737472696e672c616464726573732c75696e743235362c62797465733332) xor sha3('renew(string,uint256)')))
}

function valid(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + 128] = arg1.length > 6
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function makeCommitment(string arg1, address arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + 212] = arg3
    mem[ceil32(arg1.length) + 128] = 84
    mem[ceil32(arg1.length) + 244] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 244
       len 32
}

function rentPrice(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.0xd6e4fa86 with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, ext_call.return_data[4 len 28]
}

function available(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + 1
        continue 
    if arg1.length <= 6:
        mem[ceil32(arg1.length) + 128] = arg1.length > 6
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    require ext_code.size(stor1)
    staticcall stor1.0x96e494e8 with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, Mask(224, 0, bool(ext_call.return_data[0]))
}

function renew(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.0xd6e4fa86 with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xc475abff with:
         gas gas_remaining wei
        args sha3(arg1[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value > ext_call.return_data[0]:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 256 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 256] = 0
    emit NameRenewed(string arg1, bytes32 arg2, uint256 arg3, uint256 arg4):
                     0,
                     96,
                     ext_call.return_data[0],
                     ext_call.return_data[0],
                     arg1.length,
                     arg1[all],
                     mem[ceil32(arg1.length) + arg1.length + 256 len ceil32(arg1.length) - arg1.length],
                     sha3(arg1[all]),
}

function register(string arg1, address arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + 212] = arg4
    mem[ceil32(arg1.length) + 128] = 84
    _7 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] + minCommitmentAge <= block.timestamp
    require commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] + maxCommitmentAge > block.timestamp
    mem[ceil32(arg1.length) + arg1.length + 276] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + 1
        continue 
    require arg1.length > 6
    mem[(2 * ceil32(arg1.length)) + 280] = sha3(arg1[all])
    require ext_code.size(stor1)
    staticcall stor1.0x96e494e8 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(arg1.length)) + 280 len ceil32(arg1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    commitments[_7] = 0
    mem[(2 * ceil32(arg1.length)) + 308 len arg1.length] = arg1[all]
    mem[(2 * ceil32(arg1.length)) + arg1.length + 308] = 0
    mem[(4 * ceil32(arg1.length)) + 312] = sha3(arg1[all])
    require ext_code.size(stor1)
    staticcall stor1.0xd6e4fa86 with:
            gas gas_remaining wei
           args mem[(4 * ceil32(arg1.length)) + 312 len (5 * ceil32(arg1.length)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(arg1.length)) + 308] = 0x50e9a71500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(arg1.length)) + 344] = ext_call.return_data[0]
    mem[(4 * ceil32(arg1.length)) + 376] = arg3
    mem[(4 * ceil32(arg1.length)) + 312] = 96
    mem[(4 * ceil32(arg1.length)) + 408] = arg1.length
    mem[(4 * ceil32(arg1.length)) + 440 len ceil32(arg1.length)] = mem[(2 * ceil32(arg1.length)) + 308 len ceil32(arg1.length)]
    if not arg1.length % 32:
        require ext_code.size(stor2)
        staticcall stor2.0x50e9a715 with:
                gas gas_remaining wei
               args mem[(4 * ceil32(arg1.length)) + 312 len arg1.length + (5 * ceil32(arg1.length)) + 128]
        mem[(4 * ceil32(arg1.length)) + 308] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 >= 672 * 24 * 3600
        require msg.value >= ext_call.return_data[0]
        mem[(4 * ceil32(arg1.length)) + 308 len arg1.length] = arg1[all]
        _73 = sha3(mem[(4 * ceil32(arg1.length)) + 308 len (5 * ceil32(arg1.length)) + arg1.length])
        mem[(4 * ceil32(arg1.length)) + 312] = sha3(mem[(4 * ceil32(arg1.length)) + 308 len (5 * ceil32(arg1.length)) + arg1.length])
        mem[(4 * ceil32(arg1.length)) + 344] = arg2
        mem[(4 * ceil32(arg1.length)) + 376] = arg3
        require ext_code.size(stor1)
        call stor1.0xfca247ac with:
             gas gas_remaining wei
            args mem[(4 * ceil32(arg1.length)) + 312 len (5 * ceil32(arg1.length)) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(arg1.length)) + 340] = ext_call.return_data[0]
        mem[(4 * ceil32(arg1.length)) + 372] = ext_call.return_data[0]
        mem[(4 * ceil32(arg1.length)) + 308] = 96
        mem[(4 * ceil32(arg1.length)) + 404] = arg1.length
        mem[(4 * ceil32(arg1.length)) + 436 len arg1.length] = arg1[all]
        mem[(4 * ceil32(arg1.length)) + arg1.length + 436] = 0
        emit NameRegistered(string arg1, bytes32 arg2, address arg3, uint256 arg4, uint256 arg5):
                            mem[(4 * ceil32(arg1.length)) + 308 len (7 * ceil32(arg1.length)) + 128],
                            _73,
                            arg2,
    else:
        mem[floor32(arg1.length) + (4 * ceil32(arg1.length)) + 440] = mem[floor32(arg1.length) + (4 * ceil32(arg1.length)) + -(arg1.length % 32) + 472 len arg1.length % 32]
        require ext_code.size(stor2)
        staticcall stor2.0x50e9a715 with:
                gas gas_remaining wei
               args mem[(4 * ceil32(arg1.length)) + 312 len floor32(arg1.length) + (5 * ceil32(arg1.length)) + 160]
        mem[(4 * ceil32(arg1.length)) + 308] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 >= 672 * 24 * 3600
        require msg.value >= ext_call.return_data[0]
        mem[(4 * ceil32(arg1.length)) + 308 len arg1.length] = arg1[all]
        _78 = sha3(mem[(4 * ceil32(arg1.length)) + 308 len (5 * ceil32(arg1.length)) + arg1.length])
        mem[(4 * ceil32(arg1.length)) + 312] = sha3(mem[(4 * ceil32(arg1.length)) + 308 len (5 * ceil32(arg1.length)) + arg1.length])
        mem[(4 * ceil32(arg1.length)) + 344] = arg2
        mem[(4 * ceil32(arg1.length)) + 376] = arg3
        require ext_code.size(stor1)
        call stor1.0xfca247ac with:
             gas gas_remaining wei
            args mem[(4 * ceil32(arg1.length)) + 312 len (5 * ceil32(arg1.length)) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(arg1.length)) + 340] = ext_call.return_data[0]
        mem[(4 * ceil32(arg1.length)) + 372] = ext_call.return_data[0]
        mem[(4 * ceil32(arg1.length)) + 308] = 96
        mem[(4 * ceil32(arg1.length)) + 404] = arg1.length
        mem[(4 * ceil32(arg1.length)) + 436 len arg1.length] = arg1[all]
        mem[(4 * ceil32(arg1.length)) + arg1.length + 436] = 0
        emit NameRegistered(string arg1, bytes32 arg2, address arg3, uint256 arg4, uint256 arg5):
                            mem[(4 * ceil32(arg1.length)) + 308 len (7 * ceil32(arg1.length)) + 128],
                            _78,
                            arg2,
    if msg.value > ext_call.return_data[0]:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
