contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 10999]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnershipImmediately(address arg1) {
    require owner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    newOwner = 0
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function verify(address arg1) {
    if not stor2[address(arg1)]:
        return bool(stor2[address(arg1)]), 0, 0, 0, 0
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.mintable() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.transferable() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(stor2[address(arg1)]), 
           0,
           ext_call.return_data[0] << 248,
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[0])
}

function deployBTTSTokenContract(string arg1, string arg2, uint8 arg3, uint256 arg4, bool arg5, bool arg6) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 8689] = code.data[2267 len 8689]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 8849] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 8945] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 8977] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 9009] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 9041] = arg6
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 8881] = 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 9073] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 9105 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 8913] = arg1.length + 256
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 9105] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 9137 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: code.data[2267 len 8689], msg.sender, Array(len=arg6, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 9105 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 256, arg3 << 248, arg4, arg5
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 9137] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 9169 len arg2.length % 32]
        create contract with 0 wei
                        code: code.data[2267 len 8689], msg.sender, Array(len=arg6, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 9105 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 256, arg3 << 248, arg4, arg5
    require create.new_address
    stor2[address(create.new_address)] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit BTTSTokenListing(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 384 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 224, arg3 << 248, arg4, arg5, arg6, msg.sender, address(create.new_address));
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        emit BTTSTokenListing(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 384 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 224, arg3 << 248, arg4, arg5, arg6, msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
