contract main {




// =====================  Runtime code  =====================


address stor10;
uint256 stor10;
uint256 stor11;
mapping of uint256 stor1001;

function _fallback() payable {
    revert
}

function initializeToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TransferModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor3E9[0xb90caaf500000000000000000000000000000000000000000000000000000000] = stor3E9[0x234a6ed800000000000000000000000000000000000000000000000000000000]
    stor3E9[0x234a6ed800000000000000000000000000000000000000000000000000000000] = 0
    uint256(stor10) = ext_call.return_data[0]
    stor11 = ext_call.return_data[0]
}

function sub_b90caaf5(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = call.func_hash
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = this.address
    require ext_code.size(address(stor10))
    staticcall address(stor10).'!Dn{' with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Declined by Permission Module 1.'
    idx = 0
    s = 0
    s = 0
    while idx < arg2.length:
        require idx < mem[96]
        _19 = mem[(32 * idx) + 128]
        _20 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[_20 + 32] = _19
        mem[_20 + 64] = 1001
        require idx < mem[(32 * arg1.length) + 128]
        stor[sha3(mem[_20 + 32 len mem[_20]])] = mem[(32 * arg1.length) + (32 * idx) + 160]
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160]
        s = sha3(mem[_20 + 32 len mem[_20]])
        continue 
}



}
