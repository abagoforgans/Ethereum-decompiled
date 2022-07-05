contract main {




// =====================  Runtime code  =====================


const sub_0419816e(?) = 1000000 * 10^18

const version = '0.1.0'


address owner_address;
array of address signers;
uint256 sub_9d380bfa;
uint256 sub_484efab1;
address tokenAddress;
mapping of uint256 deposits;
mapping of uint256 sub_547c27ee;

function signers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < signers.length
    return signers[arg1]
}

function sub_484efab1(?) {
    return sub_484efab1
}

function sub_547c27ee(?) {
    require calldata.size - 4 >= 32
    return sub_547c27ee[arg1]
}

function owner_address() {
    return owner_address
}

function sub_9d380bfa(?) {
    return sub_9d380bfa
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function kill() {
    require msg.sender == owner_address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner_address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    selfdestruct(owner_address)
}

function _fallback() payable {
    revert
}

function addSigner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner_address
    signers.length++
    signers[signers.length] = arg1
}

function sub_d0d0e6e6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner_address
    require sub_484efab1 <= sub_9d380bfa
    require arg1 <= sub_9d380bfa - sub_484efab1
    require sub_484efab1 + arg1 >= sub_484efab1
    sub_484efab1 += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner_address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function topUp(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require deposits[address(msg.sender)] + arg1 >= deposits[address(msg.sender)]
    deposits[address(msg.sender)] += arg1
    emit 0xd322ff0a: arg1, msg.sender
}

function sub_c9ce532e(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = 'string message_id'
    mem[ceil32(arg3.length) + 177] = 'address receiver'
    mem[ceil32(arg3.length) + 193] = 'uint256 balance'
    mem[ceil32(arg3.length) + 208] = 'address contract'
    mem[ceil32(arg3.length) + 128] = 64
    mem[ceil32(arg3.length) + 256] = 'Balance Proof'
    mem[ceil32(arg3.length) + 269] = address(msg.sender)
    mem[ceil32(arg3.length) + 289] = arg2
    mem[ceil32(arg3.length) + 321] = address(this.address)
    mem[ceil32(arg3.length) + 224] = 85
    mem[ceil32(arg3.length) + 373] = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    require arg3.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(mem[ceil32(arg3.length) + 373], sha3('Balance Proof', msg.sender, arg2, this.address)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    idx = 0
    s = 0
    while idx < signers.length:
        mem[0] = 1
        if address(signer) != signers[idx]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require s
    require sub_547c27ee[address(msg.sender)] + arg1 >= sub_547c27ee[address(msg.sender)]
    require sub_547c27ee[address(msg.sender)] + arg1 <= arg2
    require sub_547c27ee[address(msg.sender)] + arg1 >= sub_547c27ee[address(msg.sender)]
    sub_547c27ee[address(msg.sender)] += arg1
    if not arg1:
        require sub_9d380bfa >= sub_9d380bfa
        require 0 <= arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        require arg1
        require 6 * arg1 / arg1 == 6
        require sub_9d380bfa + (6 * arg1 / 1000) >= sub_9d380bfa
        sub_9d380bfa += 6 * arg1 / 1000
        require 6 * arg1 / 1000 <= arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 - (6 * arg1 / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x3533a0f8: arg1, msg.sender
}



}
