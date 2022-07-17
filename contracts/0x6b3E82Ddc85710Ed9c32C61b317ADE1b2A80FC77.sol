contract main {




// =====================  Runtime code  =====================


#
#  - lend(bytes32 arg1, bytes arg2, address arg3, uint256 arg4, bytes arg5)
#  - settleLend(bytes arg1, bytes arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6, bytes arg7, bytes arg8)
#
address debtEngineAddress;
address tokenAddress;
array of struct sub_7d611a26;
mapping of struct creator;
mapping of uint8 stor4;

function getCreator(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_1024
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(creator[arg1].field_8)
}

function getAmount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_256
}

function getOracle(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_1280
}

function getLoanData(uint256 arg1) payable {
    return creator[arg1][8][0 len creator[arg1][8].length].field_0
}

function getBorrower(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_1536
}

function debtEngine() payable {
    return debtEngineAddress
}

function sub_7d611a26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d611a26.length
    return sub_7d611a26[arg1].field_0
}

function getBorrower(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_1536
}

function getCosigner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_512
}

function getAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_256
}

function requests(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = creator[arg1][8].field_0
    idx = 128
    s = 0
    while creator[arg1][8].length + 96 > idx:
        mem[idx + 32] = creator[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(creator[arg1].field_0), 
           bool(creator[arg1].field_8),
           creator[arg1].field_0,
           creator[arg1].field_0,
           creator[arg1].field_256,
           creator[arg1].field_512,
           creator[arg1].field_768,
           creator[arg1].field_1024,
           creator[arg1].field_1280,
           creator[arg1].field_1536,
           creator[arg1].field_1792,
           Array(len=creator[arg1][8].length, data=mem[128 len creator[arg1][8].length])
}

function getDirectoryLength() payable {
    return sub_7d611a26.length
}

function getCosigner(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_512
}

function canceledSettles(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function getLoanData(bytes32 arg1) payable {
    return creator[arg1][8][0 len creator[arg1][8].length].field_0
}

function getExpirationRequest(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_80
}

function getCreator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_1024
}

function getOracle(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_1280
}

function getExpirationRequest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_80
}

function getApproved(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(creator[arg1].field_8)
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function buildInternalSalt(uint128 arg1, address arg2, address arg3, uint256 arg4, uint64 arg5) payable {
    require calldata.size - 4 >= 160
    return sha3(arg1, arg2, arg3, arg4, arg5)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(debtEngineAddress)
    staticcall debtEngineAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function ownerOf(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(debtEngineAddress)
    staticcall debtEngineAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getDueTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(creator[arg1].field_768)
    staticcall creator[arg1].field_768.0xcdd8750e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDueTime(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(creator[arg1].field_768)
    staticcall creator[arg1].field_768.0xcdd8750e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClosingObligation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(creator[arg1].field_768)
    staticcall creator[arg1].field_768.0x9a6203e9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClosingObligation(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(creator[arg1].field_768)
    staticcall creator[arg1].field_768.0x9a6203e9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if creator[arg1].field_0:
        return 0
    require ext_code.size(debtEngineAddress)
    staticcall debtEngineAddress.0x5de28ae0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if creator[arg1].field_0:
        return 0
    require ext_code.size(debtEngineAddress)
    staticcall debtEngineAddress.0x5de28ae0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getCurrency(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not creator[arg1].field_1280:
        return 0
    require ext_code.size(creator[arg1].field_1280)
    staticcall creator[arg1].field_1280.currency() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getCurrency(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not creator[arg1].field_1280:
        return 0
    require ext_code.size(creator[arg1].field_1280)
    staticcall creator[arg1].field_1280.currency() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveRequest(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if creator[arg1].field_1536 != msg.sender:
        revert with 0, 'Only borrower can approve'
    if not creator[arg1].field_8:
        sub_7d611a26.length++
        sub_7d611a26[sub_7d611a26.length].field_0 = arg1
        creator[arg1].field_8 = 1
        creator[arg1].field_16 = 0
        creator[arg1].field_16 = uint64(sub_7d611a26.length)
        emit Approved(arg1);
    return 1
}

function internalSalt(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not creator[arg1].field_1536:
        revert with 0, 'Request does not exist'
    idx = 512
    s = 0
    while creator[arg1][8].length + 480 > idx:
        mem[idx + 32] = creator[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sha3(creator[arg1].field_256, creator[arg1].field_1536, creator[arg1].field_1024, creator[arg1].field_1792, creator[arg1].field_80)
}

function calcId(uint128 arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint64 arg7, bytes arg8) payable {
    require calldata.size - 4 >= 256
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    require ext_code.size(debtEngineAddress)
    staticcall debtEngineAddress.0xf57ae7b9 with:
            gas gas_remaining wei
           args address(this.address), address(arg4), address(arg5), sha3(arg1, arg2, arg3, arg6, arg7), Array(len=arg8.length, data=arg8[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function encodeRequest(uint128 arg1, address arg2, address arg3, address arg4, uint256 arg5, uint64 arg6, address arg7, bytes arg8) payable {
    require calldata.size - 4 >= 256
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    require ext_code.size(debtEngineAddress)
    staticcall debtEngineAddress.0xf57ae7b9 with:
            gas gas_remaining wei
           args address(this.address), address(arg2), address(arg3), sha3(arg1, arg4, arg7, arg5, arg6), Array(len=arg8.length, data=arg8[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Array(len=136, data=arg1, arg2, arg3, arg4, arg5, arg6, arg7, 0 >> 768, Mask(64, -1024, arg1, arg2, arg3, arg4, arg5, arg6, arg7, 0) << 1024), 
           ext_call.return_data[0]
}

function getDirectory() payable {
    if not sub_7d611a26.length:
        mem[(32 * sub_7d611a26.length) + 128] = 32
        mem[(32 * sub_7d611a26.length) + 160] = sub_7d611a26.length
        mem[(32 * sub_7d611a26.length) + 192 len floor32(sub_7d611a26.length)] = mem[128 len floor32(sub_7d611a26.length)]
        return memory
          from (32 * sub_7d611a26.length) + 128
           len (96 * sub_7d611a26.length) + 64
    mem[128] = uint256(sub_7d611a26.field_0)
    idx = 128
    s = 0
    while (32 * sub_7d611a26.length) + 96 > idx:
        mem[idx + 32] = sub_7d611a26[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_7d611a26.length) + 192 len floor32(sub_7d611a26.length)] = mem[128 len floor32(sub_7d611a26.length)]
    return Array(len=sub_7d611a26.length, data=mem[128 len floor32(sub_7d611a26.length)], mem[(32 * sub_7d611a26.length) + floor32(sub_7d611a26.length) + 192 len (32 * sub_7d611a26.length) - floor32(sub_7d611a26.length)]), 
}

function cosign(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if creator[arg1].field_16:
        revert with 0, 'Request cosigned is invalid'
    if not creator[arg1].field_512:
        revert with 0, 'Cosigner 0x0 is not valid'
    if creator[arg1].field_80 <= block.timestamp:
        revert with 0, 'Request is expired'
    if address(msg.sender + 2) != creator[arg1].field_512:
        revert with 0, 'Cosigner not valid'
    creator[arg1].field_512 = msg.sender or Mask(96, 160, creator[arg1].field_512)
    if arg2:
        if creator[arg1].field_1792 < arg2:
            revert with 0, 'Cosigner cost exceeded'
        require ext_code.size(debtEngineAddress)
        staticcall debtEngineAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Error paying cosigner'
    emit Cosigned(msg.sender, arg2, arg1);
    return 1
}

function cancel(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not creator[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe52657175657374206973206e6f206c6f6e676572206f70656e206f72206e6f74207265717565737465,
                    mem[206 len 22]
    if creator[arg1].field_1024 != msg.sender:
        if creator[arg1].field_1536 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x654f6e6c7920626f72726f776572206f722063726561746f722063616e2063616e63656c206120726571756573,
                        mem[209 len 19]
    if creator[arg1].field_8:
        require sub_7d611a26.length - 1 < sub_7d611a26.length
        creator[stor2[stor2.length].field_0].field_16 = creator[arg1].field_16
        require creator[arg1].field_16 < sub_7d611a26.length
        sub_7d611a26[stor3[arg1].field_16].field_0 = sub_7d611a26[sub_7d611a26.length].field_0
        sub_7d611a26.length--
        if sub_7d611a26.length > sub_7d611a26.length - 1:
            idx = sub_7d611a26.length - 1
            while sub_7d611a26.length > idx:
                sub_7d611a26[idx].field_0 = 0
                idx = idx + 1
                continue 
    creator[arg1].field_2048 = 0
    if 31 < creator[arg1][8].length:
        idx = 0
        while creator[arg1][8].length + 31 / 32 > idx:
            creator[arg1][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    creator[arg1].field_0 = 0
    creator[arg1].field_256 = 0
    creator[arg1].field_512 = 0
    creator[arg1].field_768 = 0
    creator[arg1].field_1024 = 0
    creator[arg1].field_1280 = 0
    creator[arg1].field_1536 = 0
    creator[arg1].field_1792 = 0
    creator[arg1].field_2048 = 0
    if 31 < creator[arg1][8].length:
        idx = 0
        while creator[arg1][8].length + 31 / 32 > idx:
            creator[arg1][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    emit Canceled(msg.sender, arg1);
    return 1
}

function registerApproveRequest(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if creator[arg1].field_8:
        return 0
    if ext_code.size(creator[arg1].field_1536):
        staticcall creator[arg1].field_1536.supportsInterface(bytes4 arg1) with:
                gas 30000 wei
               args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
        if ext_call.success != 0:
            if ext_call.return_data[0]:
                staticcall creator[arg1].field_1536.supportsInterface(bytes4 arg1) with:
                        gas 30000 wei
                       args 0xffffffff00000000000000000000000000000000000000000000000000000000
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        staticcall creator[arg1].field_1536.supportsInterface(bytes4 arg1) with:
                                gas 30000 wei
                               args 0x76ba600900000000000000000000000000000000000000000000000000000000
                        if ext_call.success == 1:
                            if 1 == ext_call.return_data[0]:
                                call creator[arg1].field_1536.0x76ba6009 with:
                                     gas gas_remaining wei
                                    args arg1
                                if ext_call.success != 1:
                                    if ext_call.success:
                                        emit ApprovedRejected(ext_call.return_data[0], arg1);
                                    else:
                                        emit ApprovedError(ext_call.return_data[0], arg1);
                                    if 1 == ext_call.success:
                                        if not creator[arg1].field_8:
                                            sub_7d611a26.length++
                                            sub_7d611a26[sub_7d611a26.length].field_0 = arg1
                                            creator[arg1].field_8 = 1
                                            creator[arg1].field_16 = 0
                                            creator[arg1].field_16 = uint64(sub_7d611a26.length)
                                            emit Approved(arg1);
                                    return (1 == ext_call.success)
                                if ext_call.return_data[0] == arg1 xor 0xdfcb15a077f54a681c23131eacdfd6e12b5e099685b492d382c3fd8bfc1e9a2a:
                                    emit ApprovedByCallback(arg1);
                                    if not creator[arg1].field_8:
                                        sub_7d611a26.length++
                                        sub_7d611a26[sub_7d611a26.length].field_0 = arg1
                                        creator[arg1].field_8 = 1
                                        creator[arg1].field_16 = 0
                                        creator[arg1].field_16 = uint64(sub_7d611a26.length)
                                        emit Approved(arg1);
                                else:
                                    if ext_call.success:
                                        emit ApprovedRejected(ext_call.return_data[0], arg1);
                                    else:
                                        emit ApprovedError(ext_call.return_data[0], arg1);
                                    if ext_call.return_data[0] == arg1 xor 0xdfcb15a077f54a681c23131eacdfd6e12b5e099685b492d382c3fd8bfc1e9a2a:
                                        if not creator[arg1].field_8:
                                            sub_7d611a26.length++
                                            sub_7d611a26[sub_7d611a26.length].field_0 = arg1
                                            creator[arg1].field_8 = 1
                                            creator[arg1].field_16 = 0
                                            creator[arg1].field_16 = uint64(sub_7d611a26.length)
                                            emit Approved(arg1);
                                return (ext_call.return_data[0] == arg1 xor 0xdfcb15a077f54a681c23131eacdfd6e12b5e099685b492d382c3fd8bfc1e9a2a)
    mem[220 len arg2.length] = arg2[all]
    mem[arg2.length + 220] = 0
    if mem[284 len 1] >= 27:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), mem[253] << 248, mem[220], mem[252]) 
    else:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), mem[284 len 1] + 27 << 248, mem[220], mem[252]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if creator[arg1].field_1536 != address(signer):
        return 0
    emit ApprovedBySignature(arg1);
    if not creator[arg1].field_8:
        sub_7d611a26.length++
        sub_7d611a26[sub_7d611a26.length].field_0 = arg1
        creator[arg1].field_8 = 1
        creator[arg1].field_16 = 0
        creator[arg1].field_16 = uint64(sub_7d611a26.length)
        emit Approved(arg1);
    return 1
}

function settleCancel(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    _4 = mem[144]
    _5 = mem[164]
    _6 = mem[184]
    _7 = mem[204]
    _8 = mem[236]
    if 108 > arg1.length:
        revert with 0, 'Reading bytes out of bounds'
    if arg1.length < 136:
        revert with 0, 'Reading bytes out of bounds'
    _13 = mem[244]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = Mask(128, 128, mem[128])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 208] = Mask(160, 96, _6)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = Mask(160, 96, _13)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 248] = _7
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 280] = Mask(64, 192, _8)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    _19 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = Mask(160, 96, _4) >> 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 356] = Mask(160, 96, _5) >> 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 388] = _19
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 420] = 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 452] = arg2.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 484 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    require ext_code.size(debtEngineAddress)
    staticcall debtEngineAddress.0xf57ae7b9 with:
            gas gas_remaining wei
           args address(this.address), Mask(160, 96, _4), Mask(160, 96, _5), _19, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 320] = 0
    if arg1.length < 76:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 324] = 32
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 356] = 27
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388] = 'Reading bytes out of bounds'
        revert with memory
          from (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320
           len ceil32(arg1.length) + 100
    if msg.sender == 0, Mask(64, 192, _19) >> 192:
        stor4[ext_call.return_data[0]] = 1
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320] = msg.sender
        emit SettledCancel(mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len ceil32(arg1.length) + 32], ext_call.return_data[0]);
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320] = 1
        return memory
          from (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320
           len ceil32(arg1.length) + 32
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 352 len arg1.length] = arg1[all]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + arg1.length + 352] = 0
    if arg1.length < 136:
        mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 356] = 32
        mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 388] = 27
        mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 420] = 'Reading bytes out of bounds'
        revert with memory
          from (4 * ceil32(arg1.length)) + ceil32(arg2.length) + 352
           len (5 * ceil32(arg1.length)) + 100
    if msg.sender == mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 468 len 20]:
        stor4[ext_call.return_data[0]] = 1
        mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 352] = msg.sender
        emit SettledCancel(mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 352 len (5 * ceil32(arg1.length)) + 32], ext_call.return_data[0]);
        mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 352] = 1
        return memory
          from (4 * ceil32(arg1.length)) + ceil32(arg2.length) + 352
           len (5 * ceil32(arg1.length)) + 32
    mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 356] = 32
    mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 388] = 44
    mem[(4 * ceil32(arg1.length)) + ceil32(arg2.length) + 420 len 44] = 0x6e4f6e6c7920626f72726f776572206f722063726561746f722063616e2063616e63656c206120736574746c
    revert with memory
      from (4 * ceil32(arg1.length)) + ceil32(arg2.length) + 352
       len (5 * ceil32(arg1.length)) + 132
}

function requestLoan(uint128 arg1, address arg2, address arg3, address arg4, uint256 arg5, uint64 arg6, bytes arg7) payable {
    require calldata.size - 4 >= 224
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    if not arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7254686520726571756573742073686f756c642068617665206120626f72726f7765,
                    mem[198 len 30]
    require ext_code.size(arg2)
    staticcall arg2.validate(bytes arg1) with:
            gas gas_remaining wei
           args Array(len=arg7.length, data=arg7[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The loan data is not valid'
    if creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_1536:
        revert with 0, 'Request already exist'
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_0 = 1
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_8 = uint8(bool(msg.sender == arg4))
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = 0
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_80 = arg6
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_144 = Mask(112, 136, bool(msg.sender == arg4)) >> 136
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_144 = 0
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_256 = 0
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_256 = arg1
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_512 = 0
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_768 = 0
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_768 = arg2
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_1024 = msg.sender
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_1280 = arg3
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_1536 = arg4
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_1792 = arg5
    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]][8][].field_0 = Array(len=arg7.length, data=arg7[all])
    emit 0x25957e03: arg1 << 128, address(arg2), msg.sender, address(arg3), address(arg4), arg5, Array(len=arg7.length, data=arg7[all]), arg6 << 192, sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
    if msg.sender == arg4:
        sub_7d611a26.length++
        sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
        creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
        emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
    else:
        if not ext_code.size(arg4):
            if msg.sender == arg4:
                sub_7d611a26.length++
                sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
        else:
            staticcall arg4.supportsInterface(bytes4 arg1) with:
                    gas 30000 wei
                   args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
            if 0 == ext_call.success:
                if msg.sender == arg4:
                    sub_7d611a26.length++
                    sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                    emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
            else:
                if not ext_call.return_data[0]:
                    if msg.sender == arg4:
                        sub_7d611a26.length++
                        sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                        creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                        emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                else:
                    staticcall arg4.supportsInterface(bytes4 arg1) with:
                            gas 30000 wei
                           args 0xffffffff00000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        if msg.sender == arg4:
                            sub_7d611a26.length++
                            sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                            creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                            emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                    else:
                        if ext_call.return_data[0]:
                            if msg.sender == arg4:
                                sub_7d611a26.length++
                                sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                                creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                                emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                        else:
                            staticcall arg4.supportsInterface(bytes4 arg1) with:
                                    gas 30000 wei
                                   args 0x76ba600900000000000000000000000000000000000000000000000000000000
                            if 1 != ext_call.success:
                                if msg.sender == arg4:
                                    sub_7d611a26.length++
                                    sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                                    creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                                    emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                            else:
                                if ext_call.return_data[0] != 1:
                                    if msg.sender == arg4:
                                        sub_7d611a26.length++
                                        sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                                        creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                                        emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                                else:
                                    call arg4.0x76ba6009 with:
                                         gas gas_remaining wei
                                        args sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                                    if ext_call.success != 1:
                                        if ext_call.success:
                                            emit ApprovedRejected(ext_call.return_data[0], sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                                        else:
                                            emit ApprovedError(ext_call.return_data[0], sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                                        creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_8 = Mask(248, 0, 1 == ext_call.success)
                                        if 1 == ext_call.success:
                                            sub_7d611a26.length++
                                            sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                                            creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                                            emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                                    else:
                                        if ext_call.return_data[0] == sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]) xor 0xdfcb15a077f54a681c23131eacdfd6e12b5e099685b492d382c3fd8bfc1e9a2a:
                                            emit ApprovedByCallback(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                                            creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_8 = Mask(248, 0, ext_call.return_data[0] == sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]) xor 0xdfcb15a077f54a681c23131eacdfd6e12b5e099685b492d382c3fd8bfc1e9a2a)
                                            sub_7d611a26.length++
                                            sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                                            creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                                            emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                                        else:
                                            if ext_call.success:
                                                emit ApprovedRejected(ext_call.return_data[0], sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                                            else:
                                                emit ApprovedError(ext_call.return_data[0], sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
                                            creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_8 = Mask(248, 0, ext_call.return_data[0] == sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]) xor 0xdfcb15a077f54a681c23131eacdfd6e12b5e099685b492d382c3fd8bfc1e9a2a)
                                            if ext_call.return_data[0] == sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]) xor 0xdfcb15a077f54a681c23131eacdfd6e12b5e099685b492d382c3fd8bfc1e9a2a:
                                                sub_7d611a26.length++
                                                sub_7d611a26[sub_7d611a26.length].field_0 = sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
                                                creator[0][stor0][Mask(160, 96, this.address) >> 96][arg2][arg3][sha3(arg1, arg4, msg.sender, arg5, arg6)][arg7[all]].field_16 = uint64(sub_7d611a26.length)
                                                emit Approved(sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all]));
    return sha3(0, debtEngineAddress, Mask(160, 96, this.address) >> 96, arg2, arg3, sha3(arg1, arg4, msg.sender, arg5, arg6), arg7[all])
}



}
