contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor4;

function _fallback() {
    mem[96 len -5631] = code.data[6138 len -5631]
    mem[64] = -5535
    require mem[128] <= mem[mem[96] + 96]
    require mem[128] > 0
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor2[mem[(32 * idx) + mem[96] + 140 len 20]]
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor3.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor3[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4 = mem[128]
    return code.data[507 len 5631]
}



// =====================  Runtime code  =====================


const TOKEN = 0xed247980396b10169bb1d36f6e278ed16700a60f


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 quorum;
uint256 actionCount;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function quorum() {
    return quorum
}

function actionCount() {
    return actionCount
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(stor1[arg1][arg2])
}

function _fallback() payable {
    revert
}

function revokeConfirmation(uint256 arg1) {
    require stor2[address(msg.sender)]
    require stor1[arg1][address(msg.sender)]
    require not uint8(stor0[arg1].field_520)
    stor1[arg1][address(msg.sender)] = 0
    emit Revocation(msg.sender, arg1);
}

function confirmAction(uint256 arg1) {
    require stor2[address(msg.sender)]
    if not address(stor0[arg1].field_0):
        require stor0[arg1].field_256
    require not stor1[arg1][address(msg.sender)]
    stor1[arg1][address(msg.sender)] = 1
    emit Confirmation(msg.sender, arg1);
}

function actions(uint256 arg1) {
    require uint8(stor0[arg1].field_512) <= 4
    return address(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           uint8(stor0[arg1].field_512),
           bool(uint8(stor0[arg1].field_520)),
           bool(uint8(stor0[arg1].field_528))
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
            if s != quorum:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != quorum:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 160] = 32
        mem[(32 * owners.length) + 192] = owners.length
        mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 160
           len (96 * owners.length) + 64
    mem[160] = address(owners.field_0)
    idx = 160
    s = 0
    while (32 * owners.length) + 128 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[160 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 224 len (32 * owners.length) - floor32(owners.length)]), 
}

function getActionCount(bool arg1, bool arg2, bool arg3) {
    idx = 0
    s = 0
    while idx < actionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_520):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_520):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_520):
                    idx = idx + 1
                    s = s
                    continue 
        if arg3:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_528):
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getActionIds(bool arg1, bool arg2, bool arg3) {
    idx = 0
    s = 0
    while idx < actionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_520):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_520):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_520):
                    idx = idx + 1
                    s = s
                    continue 
        if arg3:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_528):
                idx = idx + 1
                s = s
                continue 
        require s < 0
        mem[(32 * s) + 160] = idx
        idx = idx + 1
        s = s + 1
        continue 
    return ''
}

function getConfirmations(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 3
        require s < owners.length
        mem[(32 * s) + 192] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 < (32 * owners.length) + 192:
        mem[(32 * owners.length) + 192] = s
        t = 0
        while t < s:
            require t < owners.length
            require t < s
            mem[(32 * owners.length) + (32 * t) + 224] = mem[(32 * t) + 204 len 20]
            t = t + 1
            continue 
        mem[(32 * owners.length) + (32 * s) + 288 len floor32(s)] = mem[(32 * owners.length) + 224 len floor32(s)]
        return Array(len=s, data=mem[(32 * owners.length) + 224 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 288 len (32 * s) - floor32(s)]), 
    mem[(32 * s) + 224] = s
    t = 0
    while t < s:
        require t < owners.length
        require t < s, None
        mem[(32 * s) + (32 * t) + 256] = mem[(32 * t) + 204 len 20]
        t = t + 1
        continue 
    mem[(64 * s) + 256] = 32
    mem[(64 * s) + 288] = s, None
    mem[(64 * s) + 320 len floor32(s)] = mem[(32 * s) + 256 len floor32(s)]
    return memory
      from (64 * s) + 256
       len (32 * s, None) + 64
}

function executeAction(uint256 arg1) {
    require stor2[address(msg.sender)]
    if not address(stor0[arg1].field_0):
        require stor0[arg1].field_256
    require not uint8(stor0[arg1].field_520)
    require not uint8(stor0[arg1].field_528)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
            if s != quorum:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != quorum:
                idx = idx + 1
                s = s + 1
                continue 
        require uint8(stor0[arg1].field_512) <= 4
        require uint8(stor0[arg1].field_512) <= 4
        if not uint8(stor0[arg1].field_512):
            require not stor2[address(stor0[arg1].field_0)]
            stor2[address(stor0[arg1].field_0)] = 1
            owners.length++
            if not owners.length <= owners.length + 1:
                idx = owners.length + sha3(3) + 1
                while sha3(3) + owners.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            address(owners[owners.length].field_0) = address(stor0[arg1].field_0)
            emit OwnerAddition(address(stor0[arg1].field_0));
        else:
            require uint8(stor0[arg1].field_512) <= 4
            if uint8(stor0[arg1].field_512) == 1:
                require stor0[arg1].field_256 > 0
                require stor0[arg1].field_256 <= owners.length
                quorum = stor0[arg1].field_256
                emit QuorumChange(stor0[arg1].field_256);
            else:
                require uint8(stor0[arg1].field_512) <= 4
                if uint8(stor0[arg1].field_512) == 2:
                    require not uint8(stor0[stor0[arg1].field_256].field_520)
                    uint8(stor0[stor0[arg1].field_256].field_528) = 1
                else:
                    require uint8(stor0[arg1].field_512) <= 4
                    if uint8(stor0[arg1].field_512) == 3:
                        require ext_code.size(0xed247980396b10169bb1d36f6e278ed16700a60f)
                        call 0xed247980396b10169bb1d36f6e278ed16700a60f.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(stor0[arg1].field_0), stor0[arg1].field_256
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            emit ExecutionFailure(arg1);
                        else:
                            emit Execution(arg1);
                    else:
                        require uint8(stor0[arg1].field_512) <= 4
                        require uint8(stor0[arg1].field_512) == 4
                        require stor2[address(stor0[arg1].field_0)]
                        require owners.length - 1 >= quorum
                        stor2[address(stor0[arg1].field_0)] = 0
                        idx = 0
                        while idx < owners.length - 1:
                            require idx < owners.length
                            mem[0] = 3
                            if address(owners[idx].field_0) != address(stor0[arg1].field_0):
                                idx = idx + 1
                                continue 
                            require owners.length - 1 < owners.length
                            require idx < owners.length
                            address(owners[idx].field_0) = address(owners[owners.length].field_0)
                            owners.length--
                            if not owners.length <= owners.length - 1:
                                idx = owners.length + sha3(3) - 1
                                while sha3(3) + owners.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            emit OwnerWithdraw(address(stor0[arg1].field_0));
                        owners.length--
                        if not owners.length <= owners.length - 1:
                            idx = owners.length + sha3(3) - 1
                            while sha3(3) + owners.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        emit OwnerWithdraw(address(stor0[arg1].field_0));
}

function submitAction(address arg1, uint256 arg2, uint8 arg3) {
    require stor2[address(msg.sender)]
    require arg3 <= 4
    if arg3:
        require arg3 <= 4
        if arg3 != 1:
            require arg3 <= 4
            if arg3 != 2:
                require arg3 <= 4
                if arg3 != 3:
                    require arg3 <= 4
                    require arg3 == 4
                    require arg1
                    require not arg2
                else:
                    if not arg1:
                        require arg3 <= 4
                        require arg3 == 4
                        require arg1
                        require not arg2
                    else:
                        if arg2 <= 0:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
            else:
                if arg1:
                    require arg3 <= 4
                    if arg3 != 3:
                        require arg3 <= 4
                        require arg3 == 4
                        require arg1
                        require not arg2
                    else:
                        if not arg1:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if arg2 <= 0:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                else:
                    if arg2 <= 0:
                        require arg3 <= 4
                        if arg3 != 3:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if not arg1:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if arg2 <= 0:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
        else:
            if arg1:
                require arg3 <= 4
                if arg3 != 2:
                    require arg3 <= 4
                    if arg3 != 3:
                        require arg3 <= 4
                        require arg3 == 4
                        require arg1
                        require not arg2
                    else:
                        if not arg1:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if arg2 <= 0:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                else:
                    if arg1:
                        require arg3 <= 4
                        if arg3 != 3:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if not arg1:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if arg2 <= 0:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                    else:
                        if arg2 <= 0:
                            require arg3 <= 4
                            if arg3 != 3:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if not arg1:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if arg2 <= 0:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
            else:
                if arg2 <= 0:
                    require arg3 <= 4
                    if arg3 != 2:
                        require arg3 <= 4
                        if arg3 != 3:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if not arg1:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if arg2 <= 0:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                    else:
                        if arg1:
                            require arg3 <= 4
                            if arg3 != 3:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if not arg1:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if arg2 <= 0:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                        else:
                            if arg2 <= 0:
                                require arg3 <= 4
                                if arg3 != 3:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if not arg1:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if arg2 <= 0:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
    else:
        if not arg1:
            require arg3 <= 4
            if arg3 != 1:
                require arg3 <= 4
                if arg3 != 2:
                    require arg3 <= 4
                    if arg3 != 3:
                        require arg3 <= 4
                        require arg3 == 4
                        require arg1
                        require not arg2
                    else:
                        if not arg1:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if arg2 <= 0:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                else:
                    if arg1:
                        require arg3 <= 4
                        if arg3 != 3:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if not arg1:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if arg2 <= 0:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                    else:
                        if arg2 <= 0:
                            require arg3 <= 4
                            if arg3 != 3:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if not arg1:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if arg2 <= 0:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
            else:
                if arg1:
                    require arg3 <= 4
                    if arg3 != 2:
                        require arg3 <= 4
                        if arg3 != 3:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if not arg1:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if arg2 <= 0:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                    else:
                        if arg1:
                            require arg3 <= 4
                            if arg3 != 3:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if not arg1:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if arg2 <= 0:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                        else:
                            if arg2 <= 0:
                                require arg3 <= 4
                                if arg3 != 3:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if not arg1:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if arg2 <= 0:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                else:
                    if arg2 <= 0:
                        require arg3 <= 4
                        if arg3 != 2:
                            require arg3 <= 4
                            if arg3 != 3:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if not arg1:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if arg2 <= 0:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                        else:
                            if arg1:
                                require arg3 <= 4
                                if arg3 != 3:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if not arg1:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if arg2 <= 0:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                            else:
                                if arg2 <= 0:
                                    require arg3 <= 4
                                    if arg3 != 3:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if not arg1:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                                        else:
                                            if arg2 <= 0:
                                                require arg3 <= 4
                                                require arg3 == 4
                                                require arg1
                                                require not arg2
        else:
            if arg2:
                require arg3 <= 4
                if arg3 != 1:
                    require arg3 <= 4
                    if arg3 != 2:
                        require arg3 <= 4
                        if arg3 != 3:
                            require arg3 <= 4
                            require arg3 == 4
                            require arg1
                            require not arg2
                        else:
                            if not arg1:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if arg2 <= 0:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                    else:
                        if arg1:
                            require arg3 <= 4
                            if arg3 != 3:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if not arg1:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if arg2 <= 0:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                        else:
                            if arg2 <= 0:
                                require arg3 <= 4
                                if arg3 != 3:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if not arg1:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if arg2 <= 0:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                else:
                    if arg1:
                        require arg3 <= 4
                        if arg3 != 2:
                            require arg3 <= 4
                            if arg3 != 3:
                                require arg3 <= 4
                                require arg3 == 4
                                require arg1
                                require not arg2
                            else:
                                if not arg1:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if arg2 <= 0:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                        else:
                            if arg1:
                                require arg3 <= 4
                                if arg3 != 3:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if not arg1:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if arg2 <= 0:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                            else:
                                if arg2 <= 0:
                                    require arg3 <= 4
                                    if arg3 != 3:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if not arg1:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                                        else:
                                            if arg2 <= 0:
                                                require arg3 <= 4
                                                require arg3 == 4
                                                require arg1
                                                require not arg2
                    else:
                        if arg2 <= 0:
                            require arg3 <= 4
                            if arg3 != 2:
                                require arg3 <= 4
                                if arg3 != 3:
                                    require arg3 <= 4
                                    require arg3 == 4
                                    require arg1
                                    require not arg2
                                else:
                                    if not arg1:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if arg2 <= 0:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                            else:
                                if arg1:
                                    require arg3 <= 4
                                    if arg3 != 3:
                                        require arg3 <= 4
                                        require arg3 == 4
                                        require arg1
                                        require not arg2
                                    else:
                                        if not arg1:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                                        else:
                                            if arg2 <= 0:
                                                require arg3 <= 4
                                                require arg3 == 4
                                                require arg1
                                                require not arg2
                                else:
                                    if arg2 <= 0:
                                        require arg3 <= 4
                                        if arg3 != 3:
                                            require arg3 <= 4
                                            require arg3 == 4
                                            require arg1
                                            require not arg2
                                        else:
                                            if not arg1:
                                                require arg3 <= 4
                                                require arg3 == 4
                                                require arg1
                                                require not arg2
                                            else:
                                                if arg2 <= 0:
                                                    require arg3 <= 4
                                                    require arg3 == 4
                                                    require arg1
                                                    require not arg2
    actionCount++
    require arg3 <= 4
    address(stor0[stor5 + 1].field_0) = arg1
    stor0[stor5 + 1].field_256 = arg2
    require arg3 <= 4
    uint8(stor0[stor5 + 1].field_512) = arg3
    Mask(248, 0, stor0[stor5 + 1].field_520) = 0
    Mask(240, 0, stor0[stor5 + 1].field_528) = 0
    emit NewAction((actionCount + 1));
    require stor2[address(msg.sender)]
    if not address(stor0[stor5 + 1].field_0):
        require stor0[stor5 + 1].field_256
    require not stor1[stor5 + 1][address(msg.sender)]
    stor1[stor5 + 1][address(msg.sender)] = 1
    emit Confirmation(msg.sender, actionCount + 1);
    return (actionCount + 1)
}



}
