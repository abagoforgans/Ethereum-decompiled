contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor10;
address stor11;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor2 = 105
    stor3 = 2880 * 24 * 3600
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor10 = code.data[4509 len 20]
    stor11 = code.data[4541 len 20]
    stor8 = code.data[4573 len 20]
    require code.data[4593 len 32] > 100
    stor2 = code.data[4593 len 32]
    stor3 = 60 * code.data[4625 len 32]
    return code.data[287 len 4210]
}



// =====================  Runtime code  =====================


const DEPOSIT_WINDOW = (1440 * 24 * 3600)


address authorityAddress;
uint8 stor1; offset 160
address owner;
uint256 rate;
uint256 withdrawal_delay;
uint256 agtAtnReceived;
uint256 atnSent;
uint256 depositStartTime;
uint256 depositStopTime;
address poolAddress;
mapping of struct records;
address AGTAddress;
address ATNAddress;
uint256 gasRequired;
uint256 depositId;
uint256 withdrawId;

function pool() {
    return poolAddress
}

function AGT() {
    return AGTAddress
}

function rate() {
    return rate
}

function ATN() {
    return ATNAddress
}

function withdrawId() {
    return withdrawId
}

function records(address arg1) {
    return records[arg1].field_0, records[arg1].field_256
}

function depositStartTime() {
    return depositStartTime
}

function atnSent() {
    return atnSent
}

function depositStopTime() {
    return depositStopTime
}

function stopped() {
    return bool(stor1)
}

function owner() {
    return owner
}

function depositId() {
    return depositId
}

function gasRequired() {
    return gasRequired
}

function agtAtnReceived() {
    return agtAtnReceived
}

function authority() {
    return authorityAddress
}

function withdrawal_delay() {
    return withdrawal_delay
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function changeGasRequired(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    gasRequired = arg1
    emit ChangeGasRequired(arg1);
}

function changeDepositStopTimeFromNow(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    depositStopTime = block.timestamp + (24 * 3600 * arg1)
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not depositStartTime
    depositStartTime = block.timestamp
    depositStopTime = block.timestamp + (1440 * 24 * 3600)
    emit Started(block.timestamp);
}

function withdrawATN() {
    require not stor1
    require owner != msg.sender
    require records[address(msg.sender)].field_256 > 0
    require block.timestamp >= records[address(msg.sender)].field_256 + withdrawal_delay
    if records[address(msg.sender)].field_0:
        require records[address(msg.sender)].field_0
        require rate * records[address(msg.sender)].field_0 / records[address(msg.sender)].field_0 == rate
    require ext_code.size(ATNAddress)
    call ATNAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * records[address(msg.sender)].field_0 / 100
    require ext_call.success
    require ext_call.return_data[0]
    atnSent += rate * records[address(msg.sender)].field_0 / 100
    records[address(msg.sender)].field_0 = 0
    records[address(msg.sender)].field_256 = 0
    withdrawId++
    emit Withdrawal(withdrawId, rate * records[address(msg.sender)].field_0 / 100, msg.sender);
}

function onTokenTransfer(address arg1, address arg2, uint256 arg3) {
    if arg2 != this.address:
        return 1
    if owner == arg1:
        return 1
    if gas_remaining >= gasRequired:
        if not stor1:
            if block.timestamp <= depositStopTime:
                if records[address(arg1)].field_256 <= 0:
                    if arg3:
                        require arg3
                        require (-100 * arg3) + (rate * arg3) / arg3 == rate - 100
                    require ext_code.size(poolAddress)
                    call poolAddress.0x96e494e8 with:
                         gas gas_remaining - 710 wei
                        args ((-100 * arg3) + (rate * arg3) / 100)
                    require ext_call.success
                    if ext_call.return_data[0]:
                        return 1
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function claimTokens(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function tokenFallback(address arg1, uint256 arg2) {
    require not stor1
    if AGTAddress == msg.sender:
        if owner != arg1:
            require block.timestamp <= depositStopTime
            records[address(arg1)].field_0 += arg2
            records[address(arg1)].field_256 = block.timestamp
            agtAtnReceived += arg2
            if arg2:
                require arg2
                require (-100 * arg2) + (rate * arg2) / arg2 == rate - 100
            require ext_code.size(poolAddress)
            call poolAddress.0x483f31ab with:
                 gas gas_remaining - 710 wei
                args ((-100 * arg2) + (rate * arg2) / 100)
            require ext_call.success
            depositId++
            emit Deposit(depositId, arg2, arg1);
    else:
        if ATNAddress == msg.sender:
            if owner != arg1:
                require block.timestamp <= depositStopTime
                records[address(arg1)].field_0 += arg2
                records[address(arg1)].field_256 = block.timestamp
                agtAtnReceived += arg2
                if arg2:
                    require arg2
                    require (-100 * arg2) + (rate * arg2) / arg2 == rate - 100
                require ext_code.size(poolAddress)
                call poolAddress.0x483f31ab with:
                     gas gas_remaining - 710 wei
                    args ((-100 * arg2) + (rate * arg2) / 100)
                require ext_call.success
                depositId++
                emit Deposit(depositId, arg2, arg1);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require not stor1
    if AGTAddress == msg.sender:
        if owner != arg1:
            require block.timestamp <= depositStopTime
            records[address(arg1)].field_0 += arg2
            records[address(arg1)].field_256 = block.timestamp
            agtAtnReceived += arg2
            if arg2:
                require arg2
                require (-100 * arg2) + (rate * arg2) / arg2 == rate - 100
            require ext_code.size(poolAddress)
            call poolAddress.0x483f31ab with:
                 gas gas_remaining - 710 wei
                args ((-100 * arg2) + (rate * arg2) / 100)
            require ext_call.success
            depositId++
            emit Deposit(depositId, arg2, arg1);
    else:
        if ATNAddress == msg.sender:
            if owner != arg1:
                require block.timestamp <= depositStopTime
                records[address(arg1)].field_0 += arg2
                records[address(arg1)].field_256 = block.timestamp
                agtAtnReceived += arg2
                if arg2:
                    require arg2
                    require (-100 * arg2) + (rate * arg2) / arg2 == rate - 100
                require ext_code.size(poolAddress)
                call poolAddress.0x483f31ab with:
                     gas gas_remaining - 710 wei
                    args ((-100 * arg2) + (rate * arg2) / 100)
                require ext_call.success
                depositId++
                emit Deposit(depositId, arg2, arg1);
}

function batchWithdraw(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not stor1
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        _28 = sha3(mem[(32 * idx) + 140 len 20], 9)
        if records[mem[(32 * idx) + 140 len 20]].field_256 <= 0:
            s = sha3(mem[(32 * idx) + 140 len 20], 9)
            idx = idx + 1
            continue 
        if block.timestamp < records[mem[(32 * idx) + 140 len 20]].field_256 + withdrawal_delay:
            s = sha3(mem[(32 * idx) + 140 len 20], 9)
            idx = idx + 1
            continue 
        require idx < arg1.length
        _30 = mem[(32 * idx) + 128]
        _31 = sha3(mem[(32 * idx) + 140 len 20], 9)
        if records[mem[(32 * idx) + 140 len 20]].field_0:
            require records[mem[(32 * idx) + 140 len 20]].field_0
            require rate * records[mem[(32 * idx) + 140 len 20]].field_0 / records[mem[(32 * idx) + 140 len 20]].field_0 == rate
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = rate * stor[_31] / 100
        require ext_code.size(ATNAddress)
        call ATNAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + 132], rate * stor[_31] / 100
        require ext_call.success
        require ext_call.return_data[0]
        atnSent += rate * stor[_31] / 100
        mem[0] = address(_30)
        mem[32] = 9
        records[address(_30)].field_0 = 0
        records[address(_30)].field_256 = 0
        withdrawId++
        mem[(32 * arg1.length) + 128] = withdrawId
        mem[(32 * arg1.length) + 160] = rate * stor[_31] / 100
        emit Withdrawal(withdrawId, rate * stor[_31] / 100, address(_30));
        s = _28
        idx = idx + 1
        continue 
}



}
