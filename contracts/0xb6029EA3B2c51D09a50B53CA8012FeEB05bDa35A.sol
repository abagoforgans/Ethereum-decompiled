contract main {




// =====================  Runtime code  =====================


const DOMAIN_SEPARATOR_TYPEHASH = 0x35aff83d86937d35b32e04f0ddc6ff469290eef2f1b692d8a815c89404d4749

const SENTINEL_MODULES = 1

const SENTINEL_OWNERS = 1

const NAME = 'Gnosis Safe'

const SAFE_MSG_TYPEHASH = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca

const SAFE_TX_TYPEHASH = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8

const VERSION = '1.0.0'


address stor0;
mapping of struct stor1;
mapping of struct stor2;
uint256 stor3;
uint256 threshold;
uint256 nonce;
uint256 domainSeparator;
mapping of uint256 signedMessages;
mapping of uint256 approvedHashes;

function signedMessages(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return signedMessages[arg1]
}

function approvedHashes(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return approvedHashes[arg1][arg2]
}

function nonce() {
    return nonce
}

function getThreshold() {
    return threshold
}

function domainSeparator() {
    return domainSeparator
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        return arg1 != 1
    return not not stor2[address(arg1)].field_0
}

function approveHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)].field_0:
        revert with 0, 'Only owners can approve a hash'
    approvedHashes[address(msg.sender)][arg1] = 1
}

function changeMasterCopy(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid master copy address provided'
    stor0 = arg1
}

function enableModule(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    if not arg1:
        revert with 0, 'Invalid module address provided'
    if arg1 == 1:
        revert with 0, 'Invalid module address provided'
    if stor1[address(arg1)].field_0:
        revert with 0, 'Module has already been added'
    stor1[address(arg1)].field_0 = stor1[1].field_0
    stor1[1].field_0 = arg1
    emit EnabledModule(arg1);
}

function changeThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    if arg1 > stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Threshold cannot exceed owner count'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Threshold needs to be greater than 0'
    threshold = arg1
    emit ChangedThreshold(threshold);
}

function getOwners() {
    if stor3:
        mem[128 len 32 * stor3] = code.data[24211 len 32 * stor3]
    mem[0] = 1
    mem[32] = 2
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while address(idx) != 1:
        require s < stor3
        mem[(32 * s) + 128] = address(idx)
        mem[0] = address(idx)
        mem[32] = 2
        idx = stor2[address(idx)].field_0
        s = s + 1
        continue 
    mem[(32 * stor3) + 192 len floor32(stor3)] = mem[128 len floor32(stor3)]
    return Array(len=stor3, data=mem[128 len floor32(stor3)], mem[(32 * stor3) + floor32(stor3) + 192 len (32 * stor3) - floor32(stor3)]), 
}

function getMessageHash(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]))
}

function disableModule(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    if not arg2:
        revert with 0, 'Invalid module address provided'
    if arg2 == 1:
        revert with 0, 'Invalid module address provided'
    if stor1[address(arg1)].field_0 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid prevModule, module pair provided'
    stor1[address(arg1)].field_0 = stor1[address(arg2)].field_0
    stor1[address(arg2)].field_0 = 0
    emit DisabledModule(arg2);
}

function signMessage(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    signedMessages[0][0][stor6][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])] = 1
}

function getModules() {
    mem[0] = 1
    mem[32] = 1
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while address(idx) != 1:
        mem[0] = address(idx)
        mem[32] = 1
        idx = stor1[address(idx)].field_0
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[24211 len 32 * s]
    mem[0] = 1
    mem[32] = 1
    idx = stor[sha3(mem[0 len 64])]
    t = 0
    while address(idx) != 1:
        require t < s
        mem[(32 * t) + 128] = address(idx)
        mem[0] = address(idx)
        mem[32] = 1
        idx = stor1[address(idx)].field_0
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function swapOwner(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    if not arg3:
        revert with 0, 'Invalid owner address provided'
    if arg3 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg3)].field_0:
        revert with 0, 'Address is already an owner'
    if not arg2:
        revert with 0, 'Invalid owner address provided'
    if arg2 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)].field_0 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid prevOwner, owner pair provided'
    stor2[address(arg3)].field_0 = stor2[address(arg2)].field_0
    stor2[address(arg1)].field_0 = arg3
    stor2[address(arg2)].field_0 = 0
    emit RemovedOwner(arg2);
    emit AddedOwner(arg3);
}

function getTransactionHash(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 2
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = arg10
    mem[ceil32(arg3.length) + 128] = 352
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))
}

function addOwnerWithThreshold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    if not arg1:
        revert with 0, 'Invalid owner address provided'
    if arg1 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)].field_0:
        revert with 0, 'Address is already an owner'
    stor2[address(arg1)].field_0 = stor2[1].field_0
    stor2[1].field_0 = arg1
    stor3++
    emit AddedOwner(arg1);
    if threshold != arg2:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
        if arg2 > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Threshold cannot exceed owner count'
        if arg2 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Threshold needs to be greater than 0'
        threshold = arg2
        emit ChangedThreshold(threshold);
}

function encodeTransactionData(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 2
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = arg10
    mem[ceil32(arg3.length) + 128] = 352
    return Array(len=66, data=0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0 >> 256, Mask(16, -512, 0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0) << 512), 
}

function removeOwner(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    if stor3 - 1 < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New owner count needs to be larger than new threshold'
    if not arg2:
        revert with 0, 'Invalid owner address provided'
    if arg2 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)].field_0 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid prevOwner, owner pair provided'
    stor2[address(arg1)].field_0 = stor2[address(arg2)].field_0
    stor2[address(arg2)].field_0 = 0
    stor3--
    emit RemovedOwner(arg2);
    if threshold != arg3:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
        if arg3 > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Threshold cannot exceed owner count'
        if arg3 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Threshold needs to be greater than 0'
        threshold = arg3
        emit ChangedThreshold(threshold);
}

function execTransactionFromModule(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if msg.sender == 1:
        revert with 0, 'Method can only be called from an enabled module'
    if not stor1[address(msg.sender)].field_0:
        revert with 0, 'Method can only be called from an enabled module'
    require arg4 <= 2
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        mem[ceil32(arg3.length) + 128] = bool(ext_call.success)
    else:
        require arg4 <= 2
        if arg4 == 1:
            delegate arg1 with:
                 gas gas_remaining wei
                args arg3[all]
            mem[ceil32(arg3.length) + 128] = bool(delegate.return_code)
        else:
            create contract with 0 wei
                            code: arg3[all]
            mem[ceil32(arg3.length) + 128] = address(create.new_address)
            emit ContractCreation(address arg1):
                                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
            mem[ceil32(arg3.length) + 128] = not not address(create.new_address)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function requiredTxGas(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 2
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        require ext_call.success
    else:
        require arg4 <= 2
        if arg4 == 1:
            delegate arg1 with:
                 gas gas_remaining wei
                args arg3[all]
            require delegate.return_code
        else:
            create contract with 0 wei
                            code: arg3[all]
            mem[ceil32(arg3.length) + 128] = address(create.new_address)
            emit ContractCreation(address arg1):
                                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
            require address(create.new_address)
    mem[ceil32(arg3.length) + 160] = 0
    mem[ceil32(arg3.length) + 128] = 32
    mem[64] = ceil32(arg3.length) + 192
    mem[ceil32(arg3.length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 196] = 32
    mem[ceil32(arg3.length) + 228] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 260 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        revert with memory
          from ceil32(arg3.length) + 192
           len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 68
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + 260] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 292 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    revert with memory
      from ceil32(arg3.length) + 192
       len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 100
}

function setup(address[] arg1, uint256 arg2, address arg3, bytes arg4, address arg5, uint256 arg6, address arg7) {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if domainSeparator:
        revert with 0, 'Domain Separator already set!'
    domainSeparator = sha3(0x35aff83d86937d35b32e04f0ddc6ff469290eef2f1b692d8a815c89404d4749, this.address)
    mem[224 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 224] = arg4.length
    if threshold:
        revert with 0, 'Owners have already been setup'
    if arg2 > arg1.length:
        revert with 0, 'Threshold cannot exceed owner count'
    if arg2 < 1:
        revert with 0, 'Threshold needs to be greater than 0'
    idx = 0
    s = 1
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 236 len 20]:
            revert with 0, 'Invalid owner address provided'
        if mem[(32 * idx) + 236 len 20] == 1:
            revert with 0, 'Invalid owner address provided'
        if stor2[mem[(32 * idx) + 236 len 20]].field_0:
            revert with 0, 'Duplicate owner address provided'
        mem[0] = address(s)
        mem[32] = 2
        stor2[address(s)].field_0 = mem[(32 * idx) + 236 len 20]
        idx = idx + 1
        s = mem[(32 * idx) + 224]
        continue 
    uint8(stor2[address((_168 * arg1.length) + 1)].field_0) = 1
    Mask(152, 0, stor2[address((_168 * arg1.length) + 1)].field_8) = 0
    stor3 = arg1.length
    threshold = arg2
    if stor1[1].field_0:
        revert with 0, 'Modules have already been initialized'
    uint8(stor1[1].field_0) = 1
    Mask(152, 0, stor1[1].field_8) = 0
    if arg3:
        delegate arg3 with:
             gas gas_remaining wei
            args arg4[all]
        if not delegate.return_code:
            revert with 0, 'Could not finish initialization'
    if arg6 > 0:
        require arg6 >= arg6
        if not arg6:
            if not arg7:
                if not arg5:
                    call tx.origin with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with 0, 'Could not pay gas costs with ether'
                else:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = tx.origin
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = 0
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 68
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len 28] = address(tx.origin) << 64
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 288 len 4] = unknown_0xa9059cbb(?????)
                    call arg5.0xa9059cbb with:
                         gas gas_remaining - 10000 wei
                        args mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 288 len -arg4.length + ceil32(arg4.length)] - 4]
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Could not pay gas costs with token'
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'Could not pay gas costs with token'
                        if not ext_call.success or not mem[(32 * arg1.length) + ceil32(arg4.length) + 356]:
                            revert with 0, 'Could not pay gas costs with token'
            else:
                if not arg5:
                    call arg7 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with 0, 'Could not pay gas costs with ether'
                else:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = arg7
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = 0
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 68
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len 28] = address(arg7) << 64
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 288 len 4] = unknown_0xa9059cbb(?????)
                    call arg5.0xa9059cbb with:
                         gas gas_remaining - 10000 wei
                        args mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 288 len -arg4.length + ceil32(arg4.length)] - 4]
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Could not pay gas costs with token'
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'Could not pay gas costs with token'
                        if not ext_call.success or not mem[(32 * arg1.length) + ceil32(arg4.length) + 356]:
                            revert with 0, 'Could not pay gas costs with token'
        else:
            require arg6
            require arg6 / arg6 == 1
            if not arg7:
                if not arg5:
                    call tx.origin with:
                       value arg6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with 0, 'Could not pay gas costs with ether'
                else:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = tx.origin
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = arg6
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 68
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len 28] = address(tx.origin) << 64
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 288 len 4] = unknown_0xa9059cbb(?????)
                    call arg5.0xa9059cbb with:
                         gas gas_remaining - 10000 wei
                        args mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 288 len -arg4.length + ceil32(arg4.length)] - 4]
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Could not pay gas costs with token'
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'Could not pay gas costs with token'
                        if not ext_call.success or not mem[(32 * arg1.length) + ceil32(arg4.length) + 356]:
                            revert with 0, 'Could not pay gas costs with token'
            else:
                if not arg5:
                    call arg7 with:
                       value arg6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with 0, 'Could not pay gas costs with ether'
                else:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = arg7
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = arg6
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 68
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len 28] = address(arg7) << 64
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 288 len 4] = unknown_0xa9059cbb(?????)
                    call arg5.0xa9059cbb with:
                         gas gas_remaining - 10000 wei
                        args mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 288 len -arg4.length + ceil32(arg4.length)] - 4]
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Could not pay gas costs with token'
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'Could not pay gas costs with token'
                        if not ext_call.success or not mem[(32 * arg1.length) + ceil32(arg4.length) + 356]:
                            revert with 0, 'Could not pay gas costs with token'
}

function isValidSignature(bytes arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    _7 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 257] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 258] = domainSeparator
    mem[ceil32(arg1.length) + 290] = _7
    mem[ceil32(arg1.length) + 224] = 66
    if not arg2.length:
        if not signedMessages[0][0][stor6][_7]:
            revert with 0, 'Hash not approved'
        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 322] = arg1.length
    mem[ceil32(arg1.length) + 354 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 354] = 0
    mem[64] = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386
    mem[(2 * ceil32(arg1.length)) + 354] = arg2.length
    mem[(2 * ceil32(arg1.length)) + 386 len arg2.length] = arg2[all]
    mem[(2 * ceil32(arg1.length)) + arg2.length + 386] = 0
    if not threshold:
        if arg2.length >= 0:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while idx < threshold:
                _378 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                _379 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                _380 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 419]
                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]:
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] == 1:
                        if msg.sender == mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]:
                            if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                            mem[32] = 2
                            if not stor2[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            if not approvedHashes[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                revert with 0, 'Hash has not been approved'
                            if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386])].field_0:
                                revert with 0, 'Invalid owner provided'
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] == 1:
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                        continue 
                    _388 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_388 + 32] = sha3(0, 0, domainSeparator, _7)
                    mem[_388 + 64] = uint8(_380)
                    mem[_388 + 96] = _378
                    mem[_388 + 128] = _379
                    signer = erecover(sha3(0, 0, domainSeparator, _7), _380 << 248, _378, _379) 
                    mem[_388] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(signer)
                    mem[32] = 2
                    if not stor2[address(signer)].field_0:
                        revert with 0, 'Invalid owner provided'
                    if address(signer) == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _379
                    s = _378
                    s = uint8(_380)
                    s = signer
                    s = signer
                    continue 
                if not threshold:
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 0:
                        revert with 0, 'Invalid contract signature location: inside static part'
                    require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 'Invalid contract signature location: length not present'
                    require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 'Invalid contract signature location: data not complete'
                    _478 = mem[64]
                    mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                    _480 = mem[ceil32(arg1.length) + 322]
                    t = 0
                    while t < _480:
                        mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                        t = t + 32
                        continue 
                    if not _480 % 32:
                        mem[_478 + 36] = _480 + 96
                        mem[_480 + _478 + 100] = mem[(2 * ceil32(arg1.length)) + _379 + 386]
                        _739 = mem[(2 * ceil32(arg1.length)) + _379 + 386]
                        t = 0
                        while t < _739:
                            mem[_480 + _478 + t + 132] = mem[(2 * ceil32(arg1.length)) + _379 + t + 418]
                            t = t + 32
                            continue 
                        if not _739 % 32:
                            require ext_code.size(address(_378))
                            call address(_378).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _739 + _480 + _478 + -mem[64] + 128]
                        else:
                            mem[floor32(_739) + _480 + _478 + 132] = mem[floor32(_739) + _480 + _478 + -(_739 % 32) + 164 len _739 % 32]
                            require ext_code.size(address(_378))
                            call address(_378).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_739) + _480 + _478 + -mem[64] + 160]
                    else:
                        mem[floor32(_480) + _478 + 100] = mem[floor32(_480) + _478 + -(_480 % 32) + 132 len _480 % 32]
                        mem[_478 + 36] = floor32(_480) + 128
                        mem[floor32(_480) + _478 + 132] = mem[(2 * ceil32(arg1.length)) + _379 + 386]
                        _748 = mem[(2 * ceil32(arg1.length)) + _379 + 386]
                        t = 0
                        while t < _748:
                            mem[floor32(_480) + _478 + t + 164] = mem[(2 * ceil32(arg1.length)) + _379 + t + 418]
                            t = t + 32
                            continue 
                        if not _748 % 32:
                            require ext_code.size(address(_378))
                            call address(_378).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _748 + floor32(_480) + _478 + -mem[64] + 160]
                        else:
                            mem[floor32(_748) + floor32(_480) + _478 + 164] = mem[floor32(_748) + floor32(_480) + _478 + -(_748 % 32) + 196 len _748 % 32]
                            require ext_code.size(address(_378))
                            call address(_378).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_748) + floor32(_480) + _478 + -mem[64] + 192]
                else:
                    require threshold
                    require 65 * threshold / threshold == 65
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 65 * threshold:
                        revert with 0, 'Invalid contract signature location: inside static part'
                    require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 'Invalid contract signature location: length not present'
                    require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 'Invalid contract signature location: data not complete'
                    _489 = mem[64]
                    mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                    _491 = mem[ceil32(arg1.length) + 322]
                    t = 0
                    while t < _491:
                        mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                        t = t + 32
                        continue 
                    if not _491 % 32:
                        mem[_489 + 36] = _491 + 96
                        mem[_491 + _489 + 100] = mem[(2 * ceil32(arg1.length)) + _379 + 386]
                        _736 = mem[(2 * ceil32(arg1.length)) + _379 + 386]
                        t = 0
                        while t < _736:
                            mem[_491 + _489 + t + 132] = mem[(2 * ceil32(arg1.length)) + _379 + t + 418]
                            t = t + 32
                            continue 
                        if not _736 % 32:
                            require ext_code.size(address(_378))
                            call address(_378).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _736 + _491 + _489 + -mem[64] + 128]
                        else:
                            mem[floor32(_736) + _491 + _489 + 132] = mem[floor32(_736) + _491 + _489 + -(_736 % 32) + 164 len _736 % 32]
                            require ext_code.size(address(_378))
                            call address(_378).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_736) + _491 + _489 + -mem[64] + 160]
                    else:
                        mem[floor32(_491) + _489 + 100] = mem[floor32(_491) + _489 + -(_491 % 32) + 132 len _491 % 32]
                        mem[_489 + 36] = floor32(_491) + 128
                        mem[floor32(_491) + _489 + 132] = mem[(2 * ceil32(arg1.length)) + _379 + 386]
                        _746 = mem[(2 * ceil32(arg1.length)) + _379 + 386]
                        t = 0
                        while t < _746:
                            mem[floor32(_491) + _489 + t + 164] = mem[(2 * ceil32(arg1.length)) + _379 + t + 418]
                            t = t + 32
                            continue 
                        if not _746 % 32:
                            require ext_code.size(address(_378))
                            call address(_378).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _746 + floor32(_491) + _489 + -mem[64] + 160]
                        else:
                            mem[floor32(_746) + floor32(_491) + _489 + 164] = mem[floor32(_746) + floor32(_491) + _489 + -(_746 % 32) + 196 len _746 % 32]
                            require ext_code.size(address(_378))
                            call address(_378).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_746) + floor32(_491) + _489 + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Invalid contract signature provided'
                if address(_378) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(_378)
                mem[32] = 2
                if not stor2[address(_378)].field_0:
                    revert with 0, 'Invalid owner provided'
                if address(_378) == 1:
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _379
                s = _378
                s = uint8(_380)
                s = _378
                s = _378
                continue 
            return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
    else:
        require threshold
        require 65 * threshold / threshold == 65
        if arg2.length >= 65 * threshold:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while idx < threshold:
                _375 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                _376 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                _377 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 419]
                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]:
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] == 1:
                        if msg.sender == mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]:
                            if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                            mem[32] = 2
                            if not stor2[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            if not approvedHashes[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                revert with 0, 'Hash has not been approved'
                            if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386])].field_0:
                                revert with 0, 'Invalid owner provided'
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] == 1:
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                        s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                        continue 
                    _385 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_385 + 32] = sha3(0, 0, domainSeparator, _7)
                    mem[_385 + 64] = uint8(_377)
                    mem[_385 + 96] = _375
                    mem[_385 + 128] = _376
                    signer = erecover(sha3(0, 0, domainSeparator, _7), _377 << 248, _375, _376) 
                    mem[_385] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(signer)
                    mem[32] = 2
                    if not stor2[address(signer)].field_0:
                        revert with 0, 'Invalid owner provided'
                    if address(signer) == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _376
                    s = _375
                    s = uint8(_377)
                    s = signer
                    s = signer
                    continue 
                if not threshold:
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 0:
                        revert with 0, 'Invalid contract signature location: inside static part'
                    require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 'Invalid contract signature location: length not present'
                    require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 'Invalid contract signature location: data not complete'
                    _473 = mem[64]
                    mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                    _475 = mem[ceil32(arg1.length) + 322]
                    t = 0
                    while t < _475:
                        mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                        t = t + 32
                        continue 
                    if not _475 % 32:
                        mem[_473 + 36] = _475 + 96
                        mem[_475 + _473 + 100] = mem[(2 * ceil32(arg1.length)) + _376 + 386]
                        _733 = mem[(2 * ceil32(arg1.length)) + _376 + 386]
                        t = 0
                        while t < _733:
                            mem[_475 + _473 + t + 132] = mem[(2 * ceil32(arg1.length)) + _376 + t + 418]
                            t = t + 32
                            continue 
                        if not _733 % 32:
                            require ext_code.size(address(_375))
                            call address(_375).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _733 + _475 + _473 + -mem[64] + 128]
                        else:
                            mem[floor32(_733) + _475 + _473 + 132] = mem[floor32(_733) + _475 + _473 + -(_733 % 32) + 164 len _733 % 32]
                            require ext_code.size(address(_375))
                            call address(_375).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_733) + _475 + _473 + -mem[64] + 160]
                    else:
                        mem[floor32(_475) + _473 + 100] = mem[floor32(_475) + _473 + -(_475 % 32) + 132 len _475 % 32]
                        mem[_473 + 36] = floor32(_475) + 128
                        mem[floor32(_475) + _473 + 132] = mem[(2 * ceil32(arg1.length)) + _376 + 386]
                        _744 = mem[(2 * ceil32(arg1.length)) + _376 + 386]
                        t = 0
                        while t < _744:
                            mem[floor32(_475) + _473 + t + 164] = mem[(2 * ceil32(arg1.length)) + _376 + t + 418]
                            t = t + 32
                            continue 
                        if not _744 % 32:
                            require ext_code.size(address(_375))
                            call address(_375).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _744 + floor32(_475) + _473 + -mem[64] + 160]
                        else:
                            mem[floor32(_744) + floor32(_475) + _473 + 164] = mem[floor32(_744) + floor32(_475) + _473 + -(_744 % 32) + 196 len _744 % 32]
                            require ext_code.size(address(_375))
                            call address(_375).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_744) + floor32(_475) + _473 + -mem[64] + 192]
                else:
                    require threshold
                    require 65 * threshold / threshold == 65
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 65 * threshold:
                        revert with 0, 'Invalid contract signature location: inside static part'
                    require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 'Invalid contract signature location: length not present'
                    require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 'Invalid contract signature location: data not complete'
                    _483 = mem[64]
                    mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                    _485 = mem[ceil32(arg1.length) + 322]
                    t = 0
                    while t < _485:
                        mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                        t = t + 32
                        continue 
                    if not _485 % 32:
                        mem[_483 + 36] = _485 + 96
                        mem[_485 + _483 + 100] = mem[(2 * ceil32(arg1.length)) + _376 + 386]
                        _730 = mem[(2 * ceil32(arg1.length)) + _376 + 386]
                        t = 0
                        while t < _730:
                            mem[_485 + _483 + t + 132] = mem[(2 * ceil32(arg1.length)) + _376 + t + 418]
                            t = t + 32
                            continue 
                        if not _730 % 32:
                            require ext_code.size(address(_375))
                            call address(_375).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _730 + _485 + _483 + -mem[64] + 128]
                        else:
                            mem[floor32(_730) + _485 + _483 + 132] = mem[floor32(_730) + _485 + _483 + -(_730 % 32) + 164 len _730 % 32]
                            require ext_code.size(address(_375))
                            call address(_375).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_730) + _485 + _483 + -mem[64] + 160]
                    else:
                        mem[floor32(_485) + _483 + 100] = mem[floor32(_485) + _483 + -(_485 % 32) + 132 len _485 % 32]
                        mem[_483 + 36] = floor32(_485) + 128
                        mem[floor32(_485) + _483 + 132] = mem[(2 * ceil32(arg1.length)) + _376 + 386]
                        _742 = mem[(2 * ceil32(arg1.length)) + _376 + 386]
                        t = 0
                        while t < _742:
                            mem[floor32(_485) + _483 + t + 164] = mem[(2 * ceil32(arg1.length)) + _376 + t + 418]
                            t = t + 32
                            continue 
                        if not _742 % 32:
                            require ext_code.size(address(_375))
                            call address(_375).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _742 + floor32(_485) + _483 + -mem[64] + 160]
                        else:
                            mem[floor32(_742) + floor32(_485) + _483 + 164] = mem[floor32(_742) + floor32(_485) + _483 + -(_742 % 32) + 196 len _742 % 32]
                            require ext_code.size(address(_375))
                            call address(_375).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_742) + floor32(_485) + _483 + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Invalid contract signature provided'
                if address(_375) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(_375)
                mem[32] = 2
                if not stor2[address(_375)].field_0:
                    revert with 0, 'Invalid owner provided'
                if address(_375) == 1:
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _376
                s = _375
                s = uint8(_377)
                s = _375
                s = _375
                continue 
            return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 390] = 32
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 422] = 25
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 454] = 'Signatures data too short'
    revert with memory
      from (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386
       len ceil32(arg1.length) + 100
}

function execTransaction(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 2
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = nonce
    mem[ceil32(arg3.length) + 128] = 352
    _7 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    mem[ceil32(arg3.length) + 544] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 545] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 546] = domainSeparator
    mem[ceil32(arg3.length) + 578] = _7
    mem[ceil32(arg3.length) + 512] = 66
    nonce++
    mem[64] = ceil32(arg3.length) + ceil32(arg10.length) + 642
    mem[ceil32(arg3.length) + 610] = arg10.length
    mem[ceil32(arg3.length) + 642 len arg10.length] = arg10[all]
    mem[ceil32(arg3.length) + arg10.length + 642] = 0
    if not threshold:
        if arg10.length < 0:
            revert with 0, 'Signatures data too short'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < threshold:
            _3752 = mem[ceil32(arg3.length) + (65 * idx) + 642]
            _3753 = mem[ceil32(arg3.length) + (65 * idx) + 674]
            _3754 = mem[ceil32(arg3.length) + (65 * idx) + 675]
            if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]:
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] == 1:
                    if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                        if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])].field_0:
                                revert with 0, 'Invalid owner provided'
                    else:
                        if not approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                            revert with 0, 'Hash has not been approved'
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] != msg.sender:
                            approvedHashes[address(mem[ceil32(arg3.length) + (65 * idx) + 642])][sha3(0, 0, stor6, _7)] = 0
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])].field_0:
                            revert with 0, 'Invalid owner provided'
                    if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = mem[ceil32(arg3.length) + (65 * idx) + 674]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    continue 
                _3764 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3764 + 32] = sha3(0, 0, domainSeparator, _7)
                mem[_3764 + 64] = uint8(_3754)
                mem[_3764 + 96] = _3752
                mem[_3764 + 128] = _3753
                signer = erecover(sha3(0, 0, domainSeparator, _7), _3754 << 248, _3752, _3753) 
                mem[_3764] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(signer)
                mem[32] = 2
                if not stor2[address(signer)].field_0:
                    revert with 0, 'Invalid owner provided'
                if address(signer) == 1:
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _3753
                s = _3752
                s = uint8(_3754)
                s = signer
                s = signer
                continue 
            if not threshold:
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 0:
                    revert with 0, 'Invalid contract signature location: inside static part'
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 'Invalid contract signature location: length not present'
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 'Invalid contract signature location: data not complete'
                _3948 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _3950 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _3950:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _3950 % 32:
                    mem[_3948 + 36] = _3950 + 96
                    mem[_3950 + _3948 + 100] = mem[ceil32(arg3.length) + _3753 + 642]
                    _7493 = mem[ceil32(arg3.length) + _3753 + 642]
                    t = 0
                    while t < _7493:
                        mem[_3950 + _3948 + t + 132] = mem[ceil32(arg3.length) + _3753 + t + 674]
                        t = t + 32
                        continue 
                    if not _7493 % 32:
                        require ext_code.size(address(_3752))
                        call address(_3752).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7493 + _3950 + _3948 + -mem[64] + 128]
                    else:
                        mem[floor32(_7493) + _3950 + _3948 + 132] = mem[floor32(_7493) + _3950 + _3948 + -(_7493 % 32) + 164 len _7493 % 32]
                        require ext_code.size(address(_3752))
                        call address(_3752).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_7493) + _3950 + _3948 + -mem[64] + 160]
                else:
                    mem[floor32(_3950) + _3948 + 100] = mem[floor32(_3950) + _3948 + -(_3950 % 32) + 132 len _3950 % 32]
                    mem[_3948 + 36] = floor32(_3950) + 128
                    mem[floor32(_3950) + _3948 + 132] = mem[ceil32(arg3.length) + _3753 + 642]
                    _7502 = mem[ceil32(arg3.length) + _3753 + 642]
                    t = 0
                    while t < _7502:
                        mem[floor32(_3950) + _3948 + t + 164] = mem[ceil32(arg3.length) + _3753 + t + 674]
                        t = t + 32
                        continue 
                    if not _7502 % 32:
                        require ext_code.size(address(_3752))
                        call address(_3752).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7502 + floor32(_3950) + _3948 + -mem[64] + 160]
                    else:
                        mem[floor32(_7502) + floor32(_3950) + _3948 + 164] = mem[floor32(_7502) + floor32(_3950) + _3948 + -(_7502 % 32) + 196 len _7502 % 32]
                        require ext_code.size(address(_3752))
                        call address(_3752).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_7502) + floor32(_3950) + _3948 + -mem[64] + 192]
            else:
                require threshold
                require 65 * threshold / threshold == 65
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 65 * threshold:
                    revert with 0, 'Invalid contract signature location: inside static part'
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 'Invalid contract signature location: length not present'
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 'Invalid contract signature location: data not complete'
                _3995 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _3997 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _3997:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _3997 % 32:
                    mem[mem[64] + 36] = _3997 + 96
                    mem[_3997 + mem[64] + 100] = mem[ceil32(arg3.length) + _3753 + 642]
                    _7490 = mem[ceil32(arg3.length) + _3753 + 642]
                    t = 0
                    while t < _7490:
                        mem[_3997 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _3753 + t + 674]
                        t = t + 32
                        continue 
                    if not _7490 % 32:
                        require ext_code.size(address(_3752))
                        call address(_3752).0x20c13b0b with:
                             gas gas_remaining wei
                            args 64, _3997 + 96, mem[mem[64] + 68 len _7490 + _3997 + 64]
                    else:
                        mem[floor32(_7490) + _3997 + mem[64] + 132] = mem[floor32(_7490) + _3997 + mem[64] + -(_7490 % 32) + 164 len _7490 % 32]
                        require ext_code.size(address(_3752))
                        call address(_3752).0x20c13b0b with:
                             gas gas_remaining wei
                            args 64, _3997 + 96, mem[mem[64] + 68 len floor32(_7490) + _3997 + 96]
                else:
                    mem[floor32(_3997) + mem[64] + 100] = mem[floor32(_3997) + mem[64] + -(_3997 % 32) + 132 len _3997 % 32]
                    mem[mem[64] + 36] = floor32(_3997) + 128
                    mem[floor32(_3997) + mem[64] + 132] = mem[ceil32(arg3.length) + _3753 + 642]
                    _7500 = mem[ceil32(arg3.length) + _3753 + 642]
                    t = 0
                    while t < _7500:
                        mem[floor32(_3997) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _3753 + t + 674]
                        t = t + 32
                        continue 
                    if not _7500 % 32:
                        require ext_code.size(address(_3752))
                        call address(_3752).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7500 + floor32(_3997) + _3995 + -mem[64] + 160]
                    else:
                        mem[floor32(_7500) + floor32(_3997) + _3995 + 164] = mem[floor32(_7500) + floor32(_3997) + _3995 + -(_7500 % 32) + 196 len _7500 % 32]
                        require ext_code.size(address(_3752))
                        call address(_3752).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_7500) + floor32(_3997) + _3995 + -mem[64] + 192]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Invalid contract signature provided'
            if address(_3752) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(_3752)
            mem[32] = 2
            if not stor2[address(_3752)].field_0:
                revert with 0, 'Invalid owner provided'
            if address(_3752) == 1:
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _3753
            s = _3752
            s = uint8(_3754)
            s = _3752
            s = _3752
            continue 
        if gas_remaining < arg5:
            revert with 0, 'Not enough gas to execute safe transaction'
        _3758 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_3758] = arg3.length
        mem[_3758 + 32 len arg3.length] = arg3[all]
        mem[_3758 + arg3.length + 32] = 0
        require arg4 <= 2
        if arg5:
            if not arg4:
                call arg1 with:
                   value arg2 wei
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if ext_call.success:
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4197 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4198 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4198 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4198 + 36 len mem[_4198] - 4]
                                    mem[_4197 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4197 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4204 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4205 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4205 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4205 + 36 len mem[_4205] - 4]
                                    mem[_4204 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4204 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4418 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4419 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4419 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4419 + 36 len mem[_4419] - 4]
                                    mem[_4418 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4418 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4425 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4426 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4426 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4426 + 36 len mem[_4426] - 4]
                                    mem[_4425 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4425 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                else:
                    mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                    emit ExecutionFailed(mem[mem[64]]);
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4297 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4298 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4298 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4298 + 36 len mem[_4298] - 4]
                                    mem[_4297 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4297 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4304 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4305 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4305 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4305 + 36 len mem[_4305] - 4]
                                    mem[_4304 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4304 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4559 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4560 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4560 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4560 + 36 len mem[_4560] - 4]
                                    mem[_4559 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4559 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4566 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4567 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4567 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4567 + 36 len mem[_4567] - 4]
                                    mem[_4566 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4566 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                return bool(ext_call.success)
            require arg4 <= 2
            if arg4 == 1:
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if delegate.return_code:
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4741 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4742 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4742 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4742 + 36 len mem[_4742] - 4]
                                    mem[_4741 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4741 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4748 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4749 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4749 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4749 + 36 len mem[_4749] - 4]
                                    mem[_4748 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4748 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5335 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5336 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5336 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5336 + 36 len mem[_5336] - 4]
                                    mem[_5335 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5335 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5342 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5343 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5343 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5343 + 36 len mem[_5343] - 4]
                                    mem[_5342 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5342 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                else:
                    mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                    emit ExecutionFailed(mem[mem[64]]);
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5004 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5005 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5005 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5005 + 36 len mem[_5005] - 4]
                                    mem[_5004 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5004 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5011 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5012 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5012 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5012 + 36 len mem[_5012] - 4]
                                    mem[_5011 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5011 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5677 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5678 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5678 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5678 + 36 len mem[_5678] - 4]
                                    mem[_5677 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5677 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5684 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5685 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5685 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5685 + 36 len mem[_5685] - 4]
                                    mem[_5684 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5684 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                return bool(delegate.return_code)
            create contract with 0 wei
                            code: arg3[all]
            mem[mem[64]] = address(create.new_address)
            emit ContractCreation(address(create.new_address));
            require gas_remaining <= gas_remaining
            if address(create.new_address):
                if arg7 > 0:
                    require arg6 >= 0
                    if not arg6:
                        if not arg9:
                            if not arg8:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _4723 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4724 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4724 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4724 + 36 len mem[_4724] - 4]
                                mem[_4723 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_4723 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                        else:
                            if not arg8:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _4730 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4731 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4731 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4731 + 36 len mem[_4731] - 4]
                                mem[_4730 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_4730 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                    else:
                        require arg6
                        require arg6 * arg7 / arg6 == arg7
                        if not arg9:
                            if not arg8:
                                call tx.origin with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _5315 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _5316 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5316 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5316 + 36 len mem[_5316] - 4]
                                mem[_5315 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_5315 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                        else:
                            if not arg8:
                                call arg9 with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _5322 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _5323 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5323 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5323 + 36 len mem[_5323] - 4]
                                mem[_5322 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_5322 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
            else:
                mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                emit ExecutionFailed(mem[mem[64]]);
                if arg7 > 0:
                    require arg6 >= 0
                    if not arg6:
                        if not arg9:
                            if not arg8:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _4986 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4987 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4987 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4987 + 36 len mem[_4987] - 4]
                                mem[_4986 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_4986 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                        else:
                            if not arg8:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _4993 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4994 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4994 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4994 + 36 len mem[_4994] - 4]
                                mem[_4993 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_4993 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                    else:
                        require arg6
                        require arg6 * arg7 / arg6 == arg7
                        if not arg9:
                            if not arg8:
                                call tx.origin with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _5661 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _5662 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5662 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5662 + 36 len mem[_5662] - 4]
                                mem[_5661 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_5661 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                        else:
                            if not arg8:
                                call arg9 with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _5668 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _5669 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5669 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5669 + 36 len mem[_5669] - 4]
                                mem[_5668 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_5668 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
        else:
            if not arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if ext_call.success:
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4311 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4312 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4312 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4312 + 36 len mem[_4312] - 4]
                                        mem[_4311 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4311 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4318 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4319 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4319 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4319 + 36 len mem[_4319] - 4]
                                        mem[_4318 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4318 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4575 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4576 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4576 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4576 + 36 len mem[_4576] - 4]
                                        mem[_4575 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4575 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4582 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4583 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4583 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4583 + 36 len mem[_4583] - 4]
                                        mem[_4582 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4582 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    else:
                        mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                        emit ExecutionFailed(mem[mem[64]]);
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4442 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4443 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4443 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4443 + 36 len mem[_4443] - 4]
                                        mem[_4442 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4442 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4449 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4450 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4450 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4450 + 36 len mem[_4450] - 4]
                                        mem[_4449 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4449 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4777 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4778 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4778 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4778 + 36 len mem[_4778] - 4]
                                        mem[_4777 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4777 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4784 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4785 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4785 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4785 + 36 len mem[_4785] - 4]
                                        mem[_4784 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4784 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    return bool(ext_call.success)
                require arg4 <= 2
                if arg4 == 1:
                    delegate arg1 with:
                         gas gas_remaining wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if delegate.return_code:
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5054 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _5055 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5055 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5055 + 36 len mem[_5055] - 4]
                                        mem[_5054 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5054 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5061 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _5062 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5062 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5062 + 36 len mem[_5062] - 4]
                                        mem[_5061 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5061 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5729 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5730 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5730 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5730 + 36 len mem[_5730] - 4]
                                        mem[_5729 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5729 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5736 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5737 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5737 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5737 + 36 len mem[_5737] - 4]
                                        mem[_5736 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5736 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    else:
                        mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                        emit ExecutionFailed(mem[mem[64]]);
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5393 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _5394 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5394 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5394 + 36 len mem[_5394] - 4]
                                        mem[_5393 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5393 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5400 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _5401 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5401 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5401 + 36 len mem[_5401] - 4]
                                        mem[_5400 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5400 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _6013 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _6014 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_6014 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_6014 + 36 len mem[_6014] - 4]
                                        mem[_6013 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_6013 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _6020 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _6021 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_6021 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_6021 + 36 len mem[_6021] - 4]
                                        mem[_6020 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_6020 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    return bool(delegate.return_code)
                create contract with 0 wei
                                code: arg3[all]
                mem[mem[64]] = address(create.new_address)
                emit ContractCreation(address(create.new_address));
                require gas_remaining <= gas_remaining
                if address(create.new_address):
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5036 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5037 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5037 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5037 + 36 len mem[_5037] - 4]
                                    mem[_5036 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5036 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5043 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5044 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5044 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5044 + 36 len mem[_5044] - 4]
                                    mem[_5043 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5043 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5709 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5710 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5710 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5710 + 36 len mem[_5710] - 4]
                                    mem[_5709 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5709 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5716 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5717 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5717 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5717 + 36 len mem[_5717] - 4]
                                    mem[_5716 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5716 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                else:
                    mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                    emit ExecutionFailed(mem[mem[64]]);
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5375 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5376 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5376 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5376 + 36 len mem[_5376] - 4]
                                    mem[_5375 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5375 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5382 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5383 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5383 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5383 + 36 len mem[_5383] - 4]
                                    mem[_5382 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5382 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5997 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5998 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5998 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5998 + 36 len mem[_5998] - 4]
                                    mem[_5997 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5997 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _6004 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6005 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6005 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6005 + 36 len mem[_6005] - 4]
                                    mem[_6004 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_6004 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if ext_call.success:
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4329 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4330 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4330 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4330 + 36 len mem[_4330] - 4]
                                        mem[_4329 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4329 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4336 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4337 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4337 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4337 + 36 len mem[_4337] - 4]
                                        mem[_4336 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4336 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4595 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4596 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4596 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4596 + 36 len mem[_4596] - 4]
                                        mem[_4595 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4595 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4602 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4603 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4603 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4603 + 36 len mem[_4603] - 4]
                                        mem[_4602 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4602 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    else:
                        mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                        emit ExecutionFailed(mem[mem[64]]);
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4460 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4461 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4461 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4461 + 36 len mem[_4461] - 4]
                                        mem[_4460 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4460 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4467 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4468 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4468 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4468 + 36 len mem[_4468] - 4]
                                        mem[_4467 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4467 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4801 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4802 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4802 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4802 + 36 len mem[_4802] - 4]
                                        mem[_4801 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4801 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4808 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4809 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4809 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4809 + 36 len mem[_4809] - 4]
                                        mem[_4808 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4808 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    return bool(ext_call.success)
                require arg4 <= 2
                if arg4 == 1:
                    delegate arg1 with:
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if delegate.return_code:
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5100 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _5101 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5101 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5101 + 36 len mem[_5101] - 4]
                                        mem[_5100 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5100 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5107 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _5108 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5108 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5108 + 36 len mem[_5108] - 4]
                                        mem[_5107 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5107 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5785 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5786 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5786 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5786 + 36 len mem[_5786] - 4]
                                        mem[_5785 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5785 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5792 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5793 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5793 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5793 + 36 len mem[_5793] - 4]
                                        mem[_5792 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5792 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    else:
                        mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                        emit ExecutionFailed(mem[mem[64]]);
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5447 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _5448 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5448 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5448 + 36 len mem[_5448] - 4]
                                        mem[_5447 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5447 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5454 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _5455 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5455 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5455 + 36 len mem[_5455] - 4]
                                        mem[_5454 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5454 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _6061 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _6062 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_6062 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_6062 + 36 len mem[_6062] - 4]
                                        mem[_6061 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_6061 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _6068 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _6069 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_6069 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_6069 + 36 len mem[_6069] - 4]
                                        mem[_6068 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_6068 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    return bool(delegate.return_code)
                create contract with 0 wei
                                code: arg3[all]
                mem[mem[64]] = address(create.new_address)
                emit ContractCreation(address(create.new_address));
                require gas_remaining <= gas_remaining
                if address(create.new_address):
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5082 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5083 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5083 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5083 + 36 len mem[_5083] - 4]
                                    mem[_5082 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5082 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5089 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5090 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5090 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5090 + 36 len mem[_5090] - 4]
                                    mem[_5089 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5089 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5765 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5766 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5766 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5766 + 36 len mem[_5766] - 4]
                                    mem[_5765 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5765 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5772 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5773 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5773 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5773 + 36 len mem[_5773] - 4]
                                    mem[_5772 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5772 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                else:
                    mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                    emit ExecutionFailed(mem[mem[64]]);
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5429 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5430 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5430 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5430 + 36 len mem[_5430] - 4]
                                    mem[_5429 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5429 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5436 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5437 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5437 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5437 + 36 len mem[_5437] - 4]
                                    mem[_5436 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5436 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _6045 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6046 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6046 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6046 + 36 len mem[_6046] - 4]
                                    mem[_6045 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_6045 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _6052 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6053 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6053 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6053 + 36 len mem[_6053] - 4]
                                    mem[_6052 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_6052 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
    else:
        require threshold
        require 65 * threshold / threshold == 65
        if arg10.length < 65 * threshold:
            revert with 0, 'Signatures data too short'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < threshold:
            _3749 = mem[ceil32(arg3.length) + (65 * idx) + 642]
            _3750 = mem[ceil32(arg3.length) + (65 * idx) + 674]
            _3751 = mem[ceil32(arg3.length) + (65 * idx) + 675]
            if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]:
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] == 1:
                    if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                        if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])].field_0:
                                revert with 0, 'Invalid owner provided'
                    else:
                        if not approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                            revert with 0, 'Hash has not been approved'
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] != msg.sender:
                            approvedHashes[address(mem[ceil32(arg3.length) + (65 * idx) + 642])][sha3(0, 0, stor6, _7)] = 0
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])].field_0:
                            revert with 0, 'Invalid owner provided'
                    if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = mem[ceil32(arg3.length) + (65 * idx) + 674]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    continue 
                _3761 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3761 + 32] = sha3(0, 0, domainSeparator, _7)
                mem[_3761 + 64] = uint8(_3751)
                mem[_3761 + 96] = _3749
                mem[_3761 + 128] = _3750
                signer = erecover(sha3(0, 0, domainSeparator, _7), _3751 << 248, _3749, _3750) 
                mem[_3761] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(signer)
                mem[32] = 2
                if not stor2[address(signer)].field_0:
                    revert with 0, 'Invalid owner provided'
                if address(signer) == 1:
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _3750
                s = _3749
                s = uint8(_3751)
                s = signer
                s = signer
                continue 
            if not threshold:
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 0:
                    revert with 0, 'Invalid contract signature location: inside static part'
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 'Invalid contract signature location: length not present'
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 'Invalid contract signature location: data not complete'
                _3941 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _3943 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _3943:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _3943 % 32:
                    mem[mem[64] + 36] = _3943 + 96
                    mem[_3943 + mem[64] + 100] = mem[ceil32(arg3.length) + _3750 + 642]
                    _7487 = mem[ceil32(arg3.length) + _3750 + 642]
                    t = 0
                    while t < _7487:
                        mem[_3943 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _3750 + t + 674]
                        t = t + 32
                        continue 
                    if not _7487 % 32:
                        require ext_code.size(address(_3749))
                        call address(_3749).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7487 + _3943 + _3941 + -mem[64] + 128]
                    else:
                        mem[floor32(_7487) + _3943 + _3941 + 132] = mem[floor32(_7487) + _3943 + _3941 + -(_7487 % 32) + 164 len _7487 % 32]
                        require ext_code.size(address(_3749))
                        call address(_3749).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_7487) + _3943 + _3941 + -mem[64] + 160]
                else:
                    mem[floor32(_3943) + mem[64] + 100] = mem[floor32(_3943) + mem[64] + -(_3943 % 32) + 132 len _3943 % 32]
                    mem[mem[64] + 36] = floor32(_3943) + 128
                    mem[floor32(_3943) + mem[64] + 132] = mem[ceil32(arg3.length) + _3750 + 642]
                    _7498 = mem[ceil32(arg3.length) + _3750 + 642]
                    t = 0
                    while t < _7498:
                        mem[floor32(_3943) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _3750 + t + 674]
                        t = t + 32
                        continue 
                    if not _7498 % 32:
                        require ext_code.size(address(_3749))
                        call address(_3749).0x20c13b0b with:
                             gas gas_remaining wei
                            args 64, floor32(_3943) + 128, mem[mem[64] + 68 len _7498 + floor32(_3943) + 96]
                    else:
                        mem[floor32(_7498) + floor32(_3943) + mem[64] + 164] = mem[floor32(_7498) + floor32(_3943) + mem[64] + -(_7498 % 32) + 196 len _7498 % 32]
                        require ext_code.size(address(_3749))
                        call address(_3749).0x20c13b0b with:
                             gas gas_remaining wei
                            args 64, floor32(_3943) + 128, mem[mem[64] + 68 len floor32(_7498) + floor32(_3943) + 128]
            else:
                require threshold
                require 65 * threshold / threshold == 65
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 65 * threshold:
                    revert with 0, 'Invalid contract signature location: inside static part'
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 'Invalid contract signature location: length not present'
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 'Invalid contract signature location: data not complete'
                _3977 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _3979 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _3979:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _3979 % 32:
                    mem[_3977 + 36] = _3979 + 96
                    mem[_3979 + _3977 + 100] = mem[ceil32(arg3.length) + _3750 + 642]
                    _7484 = mem[ceil32(arg3.length) + _3750 + 642]
                    t = 0
                    while t < _7484:
                        mem[_3979 + _3977 + t + 132] = mem[ceil32(arg3.length) + _3750 + t + 674]
                        t = t + 32
                        continue 
                    if not _7484 % 32:
                        require ext_code.size(address(_3749))
                        call address(_3749).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7484 + _3979 + _3977 + -mem[64] + 128]
                    else:
                        mem[floor32(_7484) + _3979 + _3977 + 132] = mem[floor32(_7484) + _3979 + _3977 + -(_7484 % 32) + 164 len _7484 % 32]
                        require ext_code.size(address(_3749))
                        call address(_3749).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_7484) + _3979 + _3977 + -mem[64] + 160]
                else:
                    mem[floor32(_3979) + _3977 + 100] = mem[floor32(_3979) + _3977 + -(_3979 % 32) + 132 len _3979 % 32]
                    mem[_3977 + 36] = floor32(_3979) + 128
                    mem[floor32(_3979) + _3977 + 132] = mem[ceil32(arg3.length) + _3750 + 642]
                    _7496 = mem[ceil32(arg3.length) + _3750 + 642]
                    t = 0
                    while t < _7496:
                        mem[floor32(_3979) + _3977 + t + 164] = mem[ceil32(arg3.length) + _3750 + t + 674]
                        t = t + 32
                        continue 
                    if not _7496 % 32:
                        require ext_code.size(address(_3749))
                        call address(_3749).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7496 + floor32(_3979) + _3977 + -mem[64] + 160]
                    else:
                        mem[floor32(_7496) + floor32(_3979) + _3977 + 164] = mem[floor32(_7496) + floor32(_3979) + _3977 + -(_7496 % 32) + 196 len _7496 % 32]
                        require ext_code.size(address(_3749))
                        call address(_3749).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_7496) + floor32(_3979) + _3977 + -mem[64] + 192]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Invalid contract signature provided'
            if address(_3749) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(_3749)
            mem[32] = 2
            if not stor2[address(_3749)].field_0:
                revert with 0, 'Invalid owner provided'
            if address(_3749) == 1:
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _3750
            s = _3749
            s = uint8(_3751)
            s = _3749
            s = _3749
            continue 
        if gas_remaining < arg5:
            revert with 0, 'Not enough gas to execute safe transaction'
        _3755 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_3755] = arg3.length
        mem[_3755 + 32 len arg3.length] = arg3[all]
        mem[_3755 + arg3.length + 32] = 0
        require arg4 <= 2
        if arg5:
            if not arg4:
                call arg1 with:
                   value arg2 wei
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if ext_call.success:
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4163 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4164 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4164 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4164 + 36 len mem[_4164] - 4]
                                    mem[_4163 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4163 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4170 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4171 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4171 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4171 + 36 len mem[_4171] - 4]
                                    mem[_4170 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4170 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4355 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4356 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4356 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4356 + 36 len mem[_4356] - 4]
                                    mem[_4355 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4355 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4362 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4363 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4363 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4363 + 36 len mem[_4363] - 4]
                                    mem[_4362 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4362 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                else:
                    mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                    emit ExecutionFailed(mem[mem[64]]);
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4235 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4236 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4236 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4236 + 36 len mem[_4236] - 4]
                                    mem[_4235 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4235 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4242 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4243 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4243 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4243 + 36 len mem[_4243] - 4]
                                    mem[_4242 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4242 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4489 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4490 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4490 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4490 + 36 len mem[_4490] - 4]
                                    mem[_4489 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4489 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4496 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4497 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4497 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4497 + 36 len mem[_4497] - 4]
                                    mem[_4496 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4496 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                return bool(ext_call.success)
            require arg4 <= 2
            if arg4 == 1:
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if delegate.return_code:
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4639 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4640 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4640 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4640 + 36 len mem[_4640] - 4]
                                    mem[_4639 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4639 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4646 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4647 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4647 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4647 + 36 len mem[_4647] - 4]
                                    mem[_4646 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4646 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5159 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5160 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5160 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5160 + 36 len mem[_5160] - 4]
                                    mem[_5159 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5159 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5166 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5167 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5167 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5167 + 36 len mem[_5167] - 4]
                                    mem[_5166 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5166 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                else:
                    mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                    emit ExecutionFailed(mem[mem[64]]);
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4847 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4848 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4848 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4848 + 36 len mem[_4848] - 4]
                                    mem[_4847 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4847 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4854 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4855 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4855 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4855 + 36 len mem[_4855] - 4]
                                    mem[_4854 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4854 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5507 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5508 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5508 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5508 + 36 len mem[_5508] - 4]
                                    mem[_5507 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5507 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5514 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5515 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5515 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5515 + 36 len mem[_5515] - 4]
                                    mem[_5514 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5514 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                return bool(delegate.return_code)
            create contract with 0 wei
                            code: arg3[all]
            mem[mem[64]] = address(create.new_address)
            emit ContractCreation(address(create.new_address));
            require gas_remaining <= gas_remaining
            if address(create.new_address):
                if arg7 > 0:
                    require arg6 >= 0
                    if not arg6:
                        if not arg9:
                            if not arg8:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _4621 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4622 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4622 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4622 + 36 len mem[_4622] - 4]
                                mem[_4621 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_4621 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                        else:
                            if not arg8:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _4628 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4629 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4629 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4629 + 36 len mem[_4629] - 4]
                                mem[_4628 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_4628 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                    else:
                        require arg6
                        require arg6 * arg7 / arg6 == arg7
                        if not arg9:
                            if not arg8:
                                call tx.origin with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _5139 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _5140 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5140 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5140 + 36 len mem[_5140] - 4]
                                mem[_5139 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_5139 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                        else:
                            if not arg8:
                                call arg9 with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _5146 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _5147 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5147 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5147 + 36 len mem[_5147] - 4]
                                mem[_5146 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_5146 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
            else:
                mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                emit ExecutionFailed(mem[mem[64]]);
                if arg7 > 0:
                    require arg6 >= 0
                    if not arg6:
                        if not arg9:
                            if not arg8:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _4829 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4830 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4830 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4830 + 36 len mem[_4830] - 4]
                                mem[_4829 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_4829 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                        else:
                            if not arg8:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _4836 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4837 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4837 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4837 + 36 len mem[_4837] - 4]
                                mem[_4836 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_4836 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                    else:
                        require arg6
                        require arg6 * arg7 / arg6 == arg7
                        if not arg9:
                            if not arg8:
                                call tx.origin with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _5491 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _5492 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5492 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5492 + 36 len mem[_5492] - 4]
                                mem[_5491 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_5491 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
                        else:
                            if not arg8:
                                call arg9 with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 'Could not pay gas costs with ether'
                            else:
                                _5498 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _5499 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5499 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5499 + 36 len mem[_5499] - 4]
                                mem[_5498 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 'Could not pay gas costs with token'
                                    if not ext_call.success or not mem[_5498 + 100]:
                                        revert with 0, 'Could not pay gas costs with token'
        else:
            if not arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if ext_call.success:
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4249 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4250 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4250 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4250 + 36 len mem[_4250] - 4]
                                        mem[_4249 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4249 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4256 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4257 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4257 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4257 + 36 len mem[_4257] - 4]
                                        mem[_4256 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4256 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4505 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4506 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4506 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4506 + 36 len mem[_4506] - 4]
                                        mem[_4505 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4505 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4512 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4513 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4513 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4513 + 36 len mem[_4513] - 4]
                                        mem[_4512 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4512 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    else:
                        mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                        emit ExecutionFailed(mem[mem[64]]);
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4379 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4380 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4380 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4380 + 36 len mem[_4380] - 4]
                                        mem[_4379 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4379 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4386 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4387 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4387 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4387 + 36 len mem[_4387] - 4]
                                        mem[_4386 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4386 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4675 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4676 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4676 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4676 + 36 len mem[_4676] - 4]
                                        mem[_4675 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4675 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4682 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4683 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4683 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4683 + 36 len mem[_4683] - 4]
                                        mem[_4682 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4682 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    return bool(ext_call.success)
                require arg4 <= 2
                if arg4 == 1:
                    delegate arg1 with:
                         gas gas_remaining wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if delegate.return_code:
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4897 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4898 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4898 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4898 + 36 len mem[_4898] - 4]
                                        mem[_4897 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4897 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4904 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4905 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4905 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4905 + 36 len mem[_4905] - 4]
                                        mem[_4904 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4904 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5559 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5560 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5560 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5560 + 36 len mem[_5560] - 4]
                                        mem[_5559 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5559 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5566 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5567 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5567 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5567 + 36 len mem[_5567] - 4]
                                        mem[_5566 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5566 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    else:
                        mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                        emit ExecutionFailed(mem[mem[64]]);
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5217 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _5218 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5218 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5218 + 36 len mem[_5218] - 4]
                                        mem[_5217 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5217 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5224 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _5225 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5225 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5225 + 36 len mem[_5225] - 4]
                                        mem[_5224 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5224 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5879 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5880 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5880 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5880 + 36 len mem[_5880] - 4]
                                        mem[_5879 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5879 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5886 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5887 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5887 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5887 + 36 len mem[_5887] - 4]
                                        mem[_5886 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5886 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    return bool(delegate.return_code)
                create contract with 0 wei
                                code: arg3[all]
                mem[mem[64]] = address(create.new_address)
                emit ContractCreation(address(create.new_address));
                require gas_remaining <= gas_remaining
                if address(create.new_address):
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4879 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4880 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4880 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4880 + 36 len mem[_4880] - 4]
                                    mem[_4879 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4879 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4886 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4887 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4887 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4887 + 36 len mem[_4887] - 4]
                                    mem[_4886 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4886 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5539 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5540 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5540 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5540 + 36 len mem[_5540] - 4]
                                    mem[_5539 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5539 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5546 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5547 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5547 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5547 + 36 len mem[_5547] - 4]
                                    mem[_5546 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5546 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                else:
                    mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                    emit ExecutionFailed(mem[mem[64]]);
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5199 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5200 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5200 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5200 + 36 len mem[_5200] - 4]
                                    mem[_5199 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5199 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5206 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5207 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5207 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5207 + 36 len mem[_5207] - 4]
                                    mem[_5206 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5206 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5863 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5864 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5864 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5864 + 36 len mem[_5864] - 4]
                                    mem[_5863 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5863 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5870 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5871 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5871 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5871 + 36 len mem[_5871] - 4]
                                    mem[_5870 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5870 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if ext_call.success:
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4267 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4268 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4268 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4268 + 36 len mem[_4268] - 4]
                                        mem[_4267 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4267 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4274 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4275 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4275 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4275 + 36 len mem[_4275] - 4]
                                        mem[_4274 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4274 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4525 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4526 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4526 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4526 + 36 len mem[_4526] - 4]
                                        mem[_4525 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4525 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4532 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4533 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4533 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4533 + 36 len mem[_4533] - 4]
                                        mem[_4532 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4532 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    else:
                        mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                        emit ExecutionFailed(mem[mem[64]]);
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4397 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4398 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4398 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4398 + 36 len mem[_4398] - 4]
                                        mem[_4397 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4397 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4404 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4405 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4405 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4405 + 36 len mem[_4405] - 4]
                                        mem[_4404 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4404 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4699 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4700 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4700 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4700 + 36 len mem[_4700] - 4]
                                        mem[_4699 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4699 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4706 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _4707 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4707 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4707 + 36 len mem[_4707] - 4]
                                        mem[_4706 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4706 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    return bool(ext_call.success)
                require arg4 <= 2
                if arg4 == 1:
                    delegate arg1 with:
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if delegate.return_code:
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4943 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _4944 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4944 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4944 + 36 len mem[_4944] - 4]
                                        mem[_4943 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4943 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _4950 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _4951 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4951 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_4951 + 36 len mem[_4951] - 4]
                                        mem[_4950 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_4950 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5615 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5616 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5616 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5616 + 36 len mem[_5616] - 4]
                                        mem[_5615 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5615 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5622 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5623 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5623 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5623 + 36 len mem[_5623] - 4]
                                        mem[_5622 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5622 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    else:
                        mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                        emit ExecutionFailed(mem[mem[64]]);
                        if arg7 > 0:
                            require arg6 >= 0
                            if not arg6:
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5271 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = 0
                                        _5272 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5272 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5272 + 36 len mem[_5272] - 4]
                                        mem[_5271 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5271 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5278 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = 0
                                        _5279 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5279 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5279 + 36 len mem[_5279] - 4]
                                        mem[_5278 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5278 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                if not arg9:
                                    if not arg8:
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5927 = mem[64]
                                        mem[mem[64] + 36] = tx.origin
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5928 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5928 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5928 + 36 len mem[_5928] - 4]
                                        mem[_5927 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5927 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                                else:
                                    if not arg8:
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with ether'
                                    else:
                                        _5934 = mem[64]
                                        mem[mem[64] + 36] = arg9
                                        mem[mem[64] + 68] = arg6 * arg7
                                        _5935 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5935 + 32 len 4] = unknown_0xa9059cbb(?????)
                                        call arg8.0xa9059cbb with:
                                             gas gas_remaining - 10000 wei
                                            args mem[_5935 + 36 len mem[_5935] - 4]
                                        mem[_5934 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Could not pay gas costs with token'
                                        else:
                                            if 32 != return_data.size:
                                                revert with 0, 'Could not pay gas costs with token'
                                            if not ext_call.success or not mem[_5934 + 100]:
                                                revert with 0, 'Could not pay gas costs with token'
                    return bool(delegate.return_code)
                create contract with 0 wei
                                code: arg3[all]
                mem[mem[64]] = address(create.new_address)
                emit ContractCreation(address(create.new_address));
                require gas_remaining <= gas_remaining
                if address(create.new_address):
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4925 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4926 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4926 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4926 + 36 len mem[_4926] - 4]
                                    mem[_4925 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4925 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _4932 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4933 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4933 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4933 + 36 len mem[_4933] - 4]
                                    mem[_4932 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_4932 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5595 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5596 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5596 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5596 + 36 len mem[_5596] - 4]
                                    mem[_5595 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5595 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5602 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5603 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5603 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5603 + 36 len mem[_5603] - 4]
                                    mem[_5602 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5602 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                else:
                    mem[mem[64]] = sha3(mem[ceil32(arg3.length) + 544 len mem[ceil32(arg3.length) + 512]])
                    emit ExecutionFailed(mem[mem[64]]);
                    if arg7 > 0:
                        require arg6 >= 0
                        if not arg6:
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5253 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5254 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5254 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5254 + 36 len mem[_5254] - 4]
                                    mem[_5253 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5253 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5260 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5261 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5261 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5261 + 36 len mem[_5261] - 4]
                                    mem[_5260 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5260 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            if not arg9:
                                if not arg8:
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5911 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5912 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5912 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5912 + 36 len mem[_5912] - 4]
                                    mem[_5911 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5911 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
                            else:
                                if not arg8:
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 'Could not pay gas costs with ether'
                                else:
                                    _5918 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5919 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5919 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5919 + 36 len mem[_5919] - 4]
                                    mem[_5918 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Could not pay gas costs with token'
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 'Could not pay gas costs with token'
                                        if not ext_call.success or not mem[_5918 + 100]:
                                            revert with 0, 'Could not pay gas costs with token'
    return not not address(create.new_address)
}



}
