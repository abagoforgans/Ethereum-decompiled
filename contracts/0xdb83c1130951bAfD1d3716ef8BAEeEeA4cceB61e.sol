contract main {




// =====================  Runtime code  =====================


const getContractBal = eth.balance(this.address)


address owner;
address newOwner;
array of address stor2;

function owner() {
    return owner
}

function numGames() {
    return stor2.length
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function emergency(uint256 arg1, address arg2) payable {
    require msg.sender == owner
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund(uint256 arg1) {
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].refund(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getGameNumSides(uint256 arg1) {
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getNumSides() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function placeBet(uint256 arg1, string arg2) payable {
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].placeBet(address arg1, uint256 arg2, string arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, msg.value, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function endGame(uint256 arg1, string arg2) {
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getGameMaker() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].dish(string arg1, address arg2) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all]), owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getSidesArray(uint256 arg1) {
    require arg1 < stor2.length
    mem[96] = 0x6e4c42a000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getGameSides() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_5 + 96]
    _9 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_5 + 96])] = mem[_5 + 128 len floor32(mem[_5 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _9) + 32]
}

function addGame(string arg1, uint256 arg2, bytes32[] arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    require 1 < arg3.length
    mem[(32 * arg3.length) + ceil32(arg1.length) + 5375 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + (32 * arg3.length) + ceil32(arg1.length) + 5375] = arg3.length
        mem[arg1.length + (32 * arg3.length) + ceil32(arg1.length) + 5407 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        create contract with 0 wei
                        code: code.data[5235 len 5023], Array(len=address(this.address), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(32 * arg3.length) + (2 * ceil32(arg1.length)) + 5375 len (32 * arg3.length) + arg1.length + -ceil32(arg1.length) + 32]), arg2, arg1.length + 192, msg.sender
    else:
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + 5375] = mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + -(arg1.length % 32) + 5407 len arg1.length % 32]
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + 5407] = arg3.length
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + 5439 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        create contract with 0 wei
                        code: code.data[5235 len 5023], Array(len=address(this.address), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(32 * arg3.length) + (2 * ceil32(arg1.length)) + 5375 len (32 * arg3.length) + floor32(arg1.length) + -ceil32(arg1.length) + 64]), arg2, floor32(arg1.length) + 224, msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor2.length++
    stor2[stor2.length] = address(create.new_address)
}

function getSidesById(uint256 arg1, uint256 arg2) {
    require arg1 < stor2.length
    mem[96] = 0x6e4c42a000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getGameSides() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    require arg2 < mem[mem[96] + 96]
    _8 = mem[(32 * arg2) + mem[96] + 128]
    mem[ceil32(return_data.size) + 96] = 0x2c76d58600000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = _8
    require ext_code.size(0xe05e1a4e66c13f726a4cece661679cfbbb7f5d2f)
    delegate 0xe05e1a4e66c13f726a4cece661679cfbbb7f5d2f.zint_bytes32ToString(bytes32 arg1) with:
         gas gas_remaining wei
        args _8
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _8) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _8) >> 32 <= 4294967296
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _8) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _8) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _8) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _8) >> 32 + 96] <= 4294967296
    require arg1 < stor2.length
    mem[(2 * ceil32(return_data.size)) + 100] = arg2
    require ext_code.size(stor2[arg1])
    call stor2[arg1].checkSidePledge(uint256 arg1) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 64
    mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _12 + 96]
    _21 = mem[ceil32(return_data.size) + _12 + 96]
    mem[(2 * ceil32(return_data.size)) + 192 len ceil32(mem[ceil32(return_data.size) + _12 + 96])] = mem[ceil32(return_data.size) + _12 + 128 len ceil32(mem[ceil32(return_data.size) + _12 + 96])]
    if not _21 % 32:
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len _21 + ceil32(return_data.size) + 96
    mem[floor32(_21) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + -(_21 % 32) + 224 len _21 % 32]
    return memory
      from (2 * ceil32(return_data.size)) + 96
       len floor32(_21) + ceil32(return_data.size) + 128
}

function getName(uint256 arg1) {
    require arg1 < stor2.length
    mem[96] = 0xbbda33d900000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getGameName() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].isNotExpired() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].allSidesPledgedAmount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].isExpired() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getExpiryTime() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getGameMaker() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < stor2.length
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getNumSides() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 128] = bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 256] = address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 320] = arg1
    mem[ceil32(return_data.size) + 96] = 256
    mem[ceil32(return_data.size) + 352] = mem[_5 + 96]
    _39 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 384 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _39 % 32:
        return 256, 
               bool(ext_call.return_data[0]),
               ext_call.return_data[0],
               bool(ext_call.return_data[0]),
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               arg1,
               mem[ceil32(return_data.size) + 352 len _39 + 32]
    mem[floor32(_39) + ceil32(return_data.size) + 384] = mem[floor32(_39) + ceil32(return_data.size) + -(_39 % 32) + 416 len _39 % 32]
    return 256, 
           bool(ext_call.return_data[0]),
           ext_call.return_data[0],
           bool(ext_call.return_data[0]),
           ext_call.return_data[0],
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           arg1,
           mem[ceil32(return_data.size) + 352 len floor32(_39) + 64]
}



}
