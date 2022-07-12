contract main {


// =======================  Init code  ======================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;

function _fallback() payable {
    uint8(stor0.field_0) = 3
    require not msg.value
    mem[96 len -4982] = code.data[5657 len -4982]
    mem[64] = -4886
    require mem[192] > block.timestamp
    stor3 = mem[128]
    stor4 = mem[192]
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor6 = mem[224]
    stor5 = mem[160]
    stor7 = mem[256]
    if mem[288] == 1:
        Mask(248, 0, stor0.field_8) = 1
    else:
        Mask(248, 0, stor0.field_8) = 0
    if uint8(stor0.field_8):
        if mem[332 len 20]:
            stor8 = mem[332 len 20]
    stor2 = msg.sender
    return code.data[675 len 4982]
}



// =====================  Runtime code  =====================


uint8 version;
uint8 stor0; offset 8
array of uint256 symbol;
address owner;
uint256 fundingGoal;
uint256 deadline;
uint256 startTime;
uint256 sub_345556c1;
uint256 sub_87c1b384;
address sub_6d37e5ceAddress;
array of struct records;
mapping of uint256 sub_fb85abca;
uint256 amountRaised;

function sub_29aba134(?) {
    return bool(stor0)
}

function deadline() {
    return deadline
}

function records(uint256 arg1) {
    require arg1 < records.length
    return records[arg1].field_0, records[arg1].field_256, records[arg1].field_512
}

function sub_345556c1(?) {
    return sub_345556c1
}

function version() {
    return version
}

function sub_6d37e5ce(?) {
    return sub_6d37e5ceAddress
}

function startTime() {
    return startTime
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function sub_87c1b384(?) {
    return sub_87c1b384
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_fb85abca(?) {
    return sub_fb85abca[arg1]
}

function sub_1bb72f56(?) {
    require msg.sender == owner
    sub_87c1b384 = arg1
}

function sub_36f0837b(?) {
    require msg.sender == owner
    sub_345556c1 = arg1
}

function setDeadline(uint256 arg1) {
    require msg.sender == owner
    deadline = arg1
}

function setOrderContract(address arg1) {
    require msg.sender == owner
    require stor0
    require not records.length
    sub_6d37e5ceAddress = arg1
}

function transferEthToOwner(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_a3214dc4(?) {
    require ext_code.size(sub_6d37e5ceAddress)
    call sub_6d37e5ceAddress.0x7b989607 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_27341faa(?) {
    if not arg1:
        return records.length
    idx = 0
    s = 0
    while idx < records.length:
        mem[0] = 9
        if arg1 != records[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_fde36174(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2 * 10^uint8(ext_call.return_data[0])
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_02e1afda(?) {
    idx = 0
    s = arg1
    while idx < records.length:
        mem[0] = 9
        if arg2 != records[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        if s:
            idx = idx + 1
            s = s - 1
            continue 
        require idx < records.length
        return records[idx].field_0, records[idx].field_256, records[idx].field_512
    return 0
}

function _fallback() payable {
    require block.timestamp >= startTime
    if owner != msg.sender:
        require block.timestamp < deadline
        require msg.value >= sub_345556c1
        if not stor0:
            require sub_fb85abca[address(msg.sender)] + msg.value <= sub_87c1b384
        else:
            require ext_code.size(sub_6d37e5ceAddress)
            call sub_6d37e5ceAddress.0x7b989607 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            require sub_fb85abca[address(msg.sender)] + msg.value <= ext_call.return_data[0]
        require amountRaised + msg.value <= fundingGoal
        sub_fb85abca[address(msg.sender)] += msg.value
        amountRaised += msg.value
        records.length++
        if not records.length <= records.length + 1:
            idx = (3 * records.length) + 3
            while 3 * records.length > idx:
                records[idx].field_0 = 0
                records[idx].field_256 = 0
                records[idx].field_512 = 0
                idx = idx + 3
                continue 
        records[records.length].field_0 = msg.sender
        records[records.length].field_256 = msg.value
        records[records.length].field_512 = block.timestamp
        emit 0x301de46f: msg.sender, msg.value
}



}
