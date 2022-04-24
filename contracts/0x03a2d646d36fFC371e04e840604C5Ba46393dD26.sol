contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;

function _fallback() payable {
    stor5 = 0
    stor0 = msg.sender
    return code.data[53 len 4481]
}



// =====================  Runtime code  =====================


const intervalSecs = (720 * 24 * 3600)

const precision = 10^18


address owner;
address newOwner;
uint256 periods;
uint256 t0special;
uint8 inited;
uint8 locked; offset 8
uint256 startBlockTimestamp;
address tokenAddress;
mapping of uint256 deposited;
uint256 totalfv;
uint256 remainder;
uint256 total;
mapping of uint256 withdrawn;
uint8 nullified;
uint256 mintingNonce;

function total() {
    return total
}

function inited() {
    return bool(inited)
}

function withdrawn(address arg1) {
    return withdrawn[arg1]
}

function owner() {
    return owner
}

function t0special() {
    return t0special
}

function remainder() {
    return remainder
}

function periods() {
    return periods
}

function startBlockTimestamp() {
    return startBlockTimestamp
}

function totalfv() {
    return totalfv
}

function deposited(address arg1) {
    return deposited[arg1]
}

function locked() {
    return bool(locked)
}

function newOwner() {
    return newOwner
}

function nullified() {
    return bool(nullified)
}

function mintingNonce() {
    return mintingNonce
}

function token() {
    return tokenAddress
}

function _fallback() {
    revert
}

function lock() {
    require owner == msg.sender
    locked = 1
}

function nullify() {
    require owner == msg.sender
    nullified = 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function setToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function finalizeInit() {
    require owner == msg.sender
    require not inited
    inited = 1
}

function isStarted() {
    if not locked:
        return bool(locked)
    return bool(startBlockTimestamp)
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
        newOwner = 0
        emit ChangedOwner(newOwner);
}

function init(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require not inited
    require arg1
    periods = arg1
    t0special = arg2
}

function periodAt(uint256 arg1) {
    if startBlockTimestamp > arg1:
        return 0
    if (arg1 - startBlockTimestamp / 720 * 24 * 3600) + 1 <= periods:
        return ((arg1 - startBlockTimestamp / 720 * 24 * 3600) + 1)
    return periods
}

function period() {
    if startBlockTimestamp > block.timestamp:
        return 0
    if (block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 1 <= periods:
        return ((block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 1)
    return periods
}

function refundTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not locked
    require not startBlockTimestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function updateTotal() {
    require owner == msg.sender
    require locked
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= remainder
    total = total + ext_call.return_data[0] - remainder
    remainder = ext_call.return_data[0]
}

function start(uint256 arg1) {
    require owner == msg.sender
    require inited
    require locked
    require not startBlockTimestamp
    startBlockTimestamp = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    total = ext_call.return_data[0]
    remainder = ext_call.return_data[0]
}

function depositTo(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not locked
    require not startBlockTimestamp
    require not nullified
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    deposited[address(arg1)] += arg2
    totalfv += arg2
    emit Deposit(arg2, arg1);
}

function deposit(uint256 arg1) {
    require owner == msg.sender
    require not nullified
    require owner == msg.sender
    require not locked
    require not startBlockTimestamp
    require not nullified
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    deposited[address(msg.sender)] += arg1
    totalfv += arg1
    emit Deposit(arg1, msg.sender);
}

function availableForWithdrawalAt(uint256 arg1) {
    if startBlockTimestamp > arg1:
        if t0special + periods:
            return (10^18 * t0special / t0special + periods)
    else:
        if (arg1 - startBlockTimestamp / 720 * 24 * 3600) + 1 <= periods:
            if t0special + periods:
                return ((10^18 * t0special) + (10^18 * arg1 - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods)
        else:
            if t0special + periods:
                return ((10^18 * t0special) + (10^18 * periods) / t0special + periods)
    ('iszero', ('add', ('stor', ('name', 't0special', 3)), ('stor', ('name', 'periods', 2))))
    revert
}

function _withdrawTo(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require t0special + periods
    require totalfv
    if startBlockTimestamp > arg3:
        if arg1 * 10^18 * t0special / t0special + periods * arg4 / totalfv / 10^18 <= arg2:
            return 0
        return ((arg1 * 10^18 * t0special / t0special + periods * arg4 / totalfv / 10^18) - arg2)
    if (arg3 - startBlockTimestamp / 720 * 24 * 3600) + 1 <= periods:
        if arg1 * (10^18 * t0special) + (10^18 * arg3 - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * arg4 / totalfv / 10^18 <= arg2:
            return 0
        return ((arg1 * (10^18 * t0special) + (10^18 * arg3 - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * arg4 / totalfv / 10^18) - arg2)
    if arg1 * (10^18 * t0special) + (10^18 * periods) / t0special + periods * arg4 / totalfv / 10^18 <= arg2:
        return 0
    return ((arg1 * (10^18 * t0special) + (10^18 * periods) / t0special + periods * arg4 / totalfv / 10^18) - arg2)
}

function multiMint(uint256 arg1, uint256[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require not locked
    require not startBlockTimestamp
    if arg1 == mintingNonce:
        mintingNonce++
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            _12 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _14 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128 len 20]
            mem[32] = 7
            deposited[mem[(32 * idx) + 128 len 20]] += mem[(32 * idx) + 148 len 12]
            mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 148 len 12]
            emit Deposit(mem[(32 * arg2.length) + 128], Mask(160, 96, _12) >> 96);
            s = Mask(96, 0, _14)
            s = Mask(160, 96, _12) >> 96
            idx = idx + 1
            s = Mask(96, 0, _14) + s
            continue 
        totalfv += Mask(96, 0, _14) * arg2.length
}

function bulkDepositTo(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        require owner == msg.sender
        require not locked
        require not startBlockTimestamp
        require not nullified
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = this.address
        mem[(32 * arg1.length) + 196] = Mask(96, 0, _19)
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), Mask(96, 0, _19)
        require ext_call.success
        require ext_call.return_data[0]
        mem[0] = Mask(160, 96, _17) >> 96
        mem[32] = 7
        deposited[Mask(160, 96, _17)] += Mask(96, 0, _19)
        totalfv += Mask(96, 0, _19)
        mem[(32 * arg1.length) + 128] = Mask(96, 0, _19)
        emit Deposit(Mask(96, 0, _19), Mask(160, 96, _17) >> 96);
        s = Mask(96, 0, _19)
        s = Mask(160, 96, _17) >> 96
        idx = idx + 1
        continue 
}

function withdrawTo(address arg1) {
    require locked
    require startBlockTimestamp
    require not nullified
    require t0special + periods
    require totalfv
    if startBlockTimestamp > block.timestamp:
        if deposited[address(arg1)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18 <= withdrawn[address(arg1)]:
            return 0
        if not (deposited[address(arg1)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]:
            return 0
        require totalfv
        require deposited[address(arg1)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18 <= deposited[address(arg1)] * total / totalfv
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), (deposited[address(arg1)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]
        require ext_call.success
        require ext_call.return_data[0]
        withdrawn[address(arg1)] = deposited[address(arg1)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18
        remainder = remainder - (deposited[address(arg1)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) + withdrawn[address(arg1)]
        emit Withdraws(((deposited[address(arg1)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]), arg1);
    else:
        if (block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 1 <= periods:
            if deposited[address(arg1)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18 <= withdrawn[address(arg1)]:
                return 0
            if not (deposited[address(arg1)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]:
                return 0
            require totalfv
            require deposited[address(arg1)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18 <= deposited[address(arg1)] * total / totalfv
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (deposited[address(arg1)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]
            require ext_call.success
            require ext_call.return_data[0]
            withdrawn[address(arg1)] = deposited[address(arg1)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18
            remainder = remainder - (deposited[address(arg1)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) + withdrawn[address(arg1)]
            emit Withdraws(((deposited[address(arg1)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]), arg1);
        else:
            if deposited[address(arg1)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18 <= withdrawn[address(arg1)]:
                return 0
            if not (deposited[address(arg1)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]:
                return 0
            require totalfv
            require deposited[address(arg1)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18 <= deposited[address(arg1)] * total / totalfv
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (deposited[address(arg1)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]
            require ext_call.success
            require ext_call.return_data[0]
            withdrawn[address(arg1)] = deposited[address(arg1)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18
            remainder = remainder - (deposited[address(arg1)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) + withdrawn[address(arg1)]
            emit Withdraws(((deposited[address(arg1)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - withdrawn[address(arg1)]), arg1);
    return 1
}

function withdraw() {
    require not nullified
    require locked
    require startBlockTimestamp
    require not nullified
    require t0special + periods
    require totalfv
    if startBlockTimestamp > block.timestamp:
        if deposited[address(msg.sender)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18 <= withdrawn[address(msg.sender)]:
            return 0
        if not (deposited[address(msg.sender)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]:
            return 0
        require totalfv
        require deposited[address(msg.sender)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18 <= deposited[address(msg.sender)] * total / totalfv
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (deposited[address(msg.sender)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]
        require ext_call.success
        require ext_call.return_data[0]
        withdrawn[address(msg.sender)] = deposited[address(msg.sender)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18
        remainder = remainder - (deposited[address(msg.sender)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) + withdrawn[address(msg.sender)]
        emit Withdraws(((deposited[address(msg.sender)] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]), msg.sender);
    else:
        if (block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 1 <= periods:
            if deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18 <= withdrawn[address(msg.sender)]:
                return 0
            if not (deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]:
                return 0
            require totalfv
            require deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18 <= deposited[address(msg.sender)] * total / totalfv
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]
            require ext_call.success
            require ext_call.return_data[0]
            withdrawn[address(msg.sender)] = deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18
            remainder = remainder - (deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) + withdrawn[address(msg.sender)]
            emit Withdraws(((deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]), msg.sender);
        else:
            if deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18 <= withdrawn[address(msg.sender)]:
                return 0
            if not (deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]:
                return 0
            require totalfv
            require deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18 <= deposited[address(msg.sender)] * total / totalfv
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]
            require ext_call.success
            require ext_call.return_data[0]
            withdrawn[address(msg.sender)] = deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18
            remainder = remainder - (deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) + withdrawn[address(msg.sender)]
            emit Withdraws(((deposited[address(msg.sender)] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - withdrawn[address(msg.sender)]), msg.sender);
    return 1
}

function bulkWithdraw(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not nullified
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _33 = mem[(32 * idx) + 128]
        require locked
        require startBlockTimestamp
        require not nullified
        mem[0] = mem[(32 * idx) + 140 len 20]
        _34 = sha3(mem[(32 * idx) + 140 len 20], 7)
        mem[32] = 11
        _35 = sha3(mem[(32 * idx) + 140 len 20], 11)
        require t0special + periods
        require totalfv
        if startBlockTimestamp > block.timestamp:
            if deposited[mem[(32 * idx) + 140 len 20]] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18 > withdrawn[mem[(32 * idx) + 140 len 20]]:
                if (deposited[mem[(32 * idx) + 140 len 20]] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - withdrawn[mem[(32 * idx) + 140 len 20]]:
                    require totalfv
                    require deposited[mem[(32 * idx) + 140 len 20]] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18 <= deposited[mem[(32 * idx) + 140 len 20]] * total / totalfv
                    mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                    mem[(32 * arg1.length) + 164] = (stor[_34] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - stor[_35]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args mem[(32 * arg1.length) + 132], (stor[_34] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - stor[_35]
                    require ext_call.success
                    require ext_call.return_data[0]
                    mem[0] = address(_33)
                    mem[32] = 11
                    withdrawn[address(_33)] = (stor[_34] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - stor[_35] + withdrawn[address(_33)]
                    remainder = remainder - (stor[_34] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) + stor[_35]
                    mem[(32 * arg1.length) + 128] = (stor[_34] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - stor[_35]
                    emit Withdraws(((stor[_34] * 10^18 * t0special / t0special + periods * total / totalfv / 10^18) - stor[_35]), address(_33));
        else:
            if (block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 1 <= periods:
                if deposited[mem[(32 * idx) + 140 len 20]] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18 > withdrawn[mem[(32 * idx) + 140 len 20]]:
                    if (deposited[mem[(32 * idx) + 140 len 20]] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - withdrawn[mem[(32 * idx) + 140 len 20]]:
                        require totalfv
                        require deposited[mem[(32 * idx) + 140 len 20]] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18 <= deposited[mem[(32 * idx) + 140 len 20]] * total / totalfv
                        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg1.length) + 164] = (stor[_34] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - stor[_35]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args mem[(32 * arg1.length) + 132], (stor[_34] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - stor[_35]
                        require ext_call.success
                        require ext_call.return_data[0]
                        mem[0] = address(_33)
                        mem[32] = 11
                        withdrawn[address(_33)] = (stor[_34] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - stor[_35] + withdrawn[address(_33)]
                        remainder = remainder - (stor[_34] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) + stor[_35]
                        mem[(32 * arg1.length) + 128] = (stor[_34] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - stor[_35]
                        emit Withdraws(((stor[_34] * (10^18 * t0special) + (10^18 * block.timestamp - startBlockTimestamp / 720 * 24 * 3600) + 10^18 / t0special + periods * total / totalfv / 10^18) - stor[_35]), address(_33));
            else:
                if deposited[mem[(32 * idx) + 140 len 20]] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18 > withdrawn[mem[(32 * idx) + 140 len 20]]:
                    if (deposited[mem[(32 * idx) + 140 len 20]] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - withdrawn[mem[(32 * idx) + 140 len 20]]:
                        require totalfv
                        require deposited[mem[(32 * idx) + 140 len 20]] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18 <= deposited[mem[(32 * idx) + 140 len 20]] * total / totalfv
                        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg1.length) + 164] = (stor[_34] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - stor[_35]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args mem[(32 * arg1.length) + 132], (stor[_34] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - stor[_35]
                        require ext_call.success
                        require ext_call.return_data[0]
                        mem[0] = address(_33)
                        mem[32] = 11
                        withdrawn[address(_33)] = (stor[_34] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - stor[_35] + withdrawn[address(_33)]
                        remainder = remainder - (stor[_34] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) + stor[_35]
                        mem[(32 * arg1.length) + 128] = (stor[_34] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - stor[_35]
                        emit Withdraws(((stor[_34] * (10^18 * t0special) + (10^18 * periods) / t0special + periods * total / totalfv / 10^18) - stor[_35]), address(_33));
        idx = idx + 1
        continue 
}



}
