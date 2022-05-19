contract main {


// =======================  Init code  ======================


uint8 stor0;
array of uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor0 = 2
    require not msg.value
    mem[96 len -5978] = code.data[6442 len -5978]
    mem[64] = -5882
    require mem[160] > block.timestamp
    stor3 = mem[128]
    stor4 = mem[160]
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor6 = mem[192]
    stor5 = mem[224]
    stor7 = mem[256]
    stor2 = msg.sender
    return code.data[464 len 5978]
}



// =====================  Runtime code  =====================


uint8 version;
array of uint256 symbol;
address owner;
uint256 fundingGoal;
uint256 deadline;
uint256 startTime;
uint256 sub_345556c1;
uint256 sub_87c1b384;
array of uint256 sub_681e0ecd;
array of struct records;
mapping of uint256 sub_fb85abca;
uint256 amountRaised;

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

function sub_681e0ecd(?) {
    require arg1 < 13
    return sub_681e0ecd[arg1]
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

function transferEthToOwner(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_27341faa(?) {
    if not arg1:
        return records.length
    idx = 0
    s = 0
    while idx < records.length:
        mem[0] = 21
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
        mem[0] = 21
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
        if sub_87c1b384 > 0:
            require sub_fb85abca[address(msg.sender)] + msg.value <= sub_87c1b384
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

function sub_422b40b1(?) {
    require msg.sender == owner
    require block.timestamp >= deadline
    require arg1 > 0
    require arg2 > 0
    require arg3 < 13
    require sub_681e0ecd[arg3] < records.length
    if sub_681e0ecd[arg3] + arg1 <= records.length:
        s = 0
        idx = sub_681e0ecd[arg3]
        while idx < sub_681e0ecd[arg3] + arg1:
            require idx < records.length
            require idx < records.length
            call records[idx].field_0 with:
               value records[idx].field_256 * arg2 / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require idx < records.length
            mem[0] = 21
            emit 0x5cbb65cc: records[idx].field_0, records[idx].field_256 * arg2 / 100
            s = records[idx].field_256 * arg2 / 100
            idx = idx + 1
            continue 
        require arg3 < 13
        sub_681e0ecd[arg3] += arg1
        return (sub_681e0ecd[arg3] + arg1)
    s = 0
    idx = sub_681e0ecd[arg3]
    while idx < records.length:
        require idx < records.length
        call records[idx].field_0 with:
           value records[idx].field_256 * arg2 / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < records.length
        mem[0] = 21
        emit 0x5cbb65cc: records[idx].field_0, records[idx].field_256 * arg2 / 100
        s = records[idx].field_256 * arg2 / 100
        idx = idx + 1
        continue 
    require arg3 < 13
    sub_681e0ecd[arg3] = records.length
    return records.length
}

function sub_5bdf37d5(?) {
    require msg.sender == owner
    require block.timestamp >= deadline
    require arg1
    require arg4 > 0
    require arg2 >= 0
    require arg3 > 0
    require arg2 < 13
    require sub_681e0ecd[arg2] < records.length
    if sub_681e0ecd[arg2] + arg3 <= records.length:
        if arg5:
            require arg5 > 0
            s = 0
            idx = sub_681e0ecd[arg2]
            while idx < sub_681e0ecd[arg2] + arg3:
                require idx < records.length
                require idx < records.length
                mem[100] = records[idx].field_0
                mem[132] = arg4 * 10^arg5 * records[idx].field_256 / 10^18
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args records[idx].field_0, arg4 * 10^arg5 * records[idx].field_256 / 10^18
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require idx < records.length
                mem[0] = 21
                emit 0x67b55fbf: records[idx].field_0, arg4 * 10^arg5 * records[idx].field_256 / 10^18
                s = arg4 * 10^arg5 * records[idx].field_256 / 10^18
                idx = idx + 1
                continue 
        else:
            require ext_code.size(arg1)
            call arg1.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[31 len 1] > 0
            s = 0
            idx = sub_681e0ecd[arg2]
            while idx < sub_681e0ecd[arg2] + arg3:
                require idx < records.length
                require idx < records.length
                mem[100] = records[idx].field_0
                mem[132] = arg4 * 10^uint8(ext_call.return_data[0]) * records[idx].field_256 / 10^18
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args records[idx].field_0, arg4 * 10^uint8(ext_call.return_data[0]) * records[idx].field_256 / 10^18
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require idx < records.length
                mem[0] = 21
                emit 0x67b55fbf: records[idx].field_0, arg4 * 10^uint8(ext_call.return_data[0]) * records[idx].field_256 / 10^18
                s = arg4 * 10^uint8(ext_call.return_data[0]) * records[idx].field_256 / 10^18
                idx = idx + 1
                continue 
        require arg2 < 13
        sub_681e0ecd[arg2] += arg3
        return (sub_681e0ecd[arg2] + arg3)
    if arg5:
        require arg5 > 0
        s = 0
        idx = sub_681e0ecd[arg2]
        while idx < records.length:
            require idx < records.length
            mem[100] = records[idx].field_0
            mem[132] = arg4 * 10^arg5 * records[idx].field_256 / 10^18
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args records[idx].field_0, arg4 * 10^arg5 * records[idx].field_256 / 10^18
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require idx < records.length
            mem[0] = 21
            emit 0x67b55fbf: records[idx].field_0, arg4 * 10^arg5 * records[idx].field_256 / 10^18
            s = arg4 * 10^arg5 * records[idx].field_256 / 10^18
            idx = idx + 1
            continue 
    else:
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[31 len 1] > 0
        s = 0
        idx = sub_681e0ecd[arg2]
        while idx < records.length:
            require idx < records.length
            mem[100] = records[idx].field_0
            mem[132] = arg4 * 10^uint8(ext_call.return_data[0]) * records[idx].field_256 / 10^18
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args records[idx].field_0, arg4 * 10^uint8(ext_call.return_data[0]) * records[idx].field_256 / 10^18
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require idx < records.length
            mem[0] = 21
            emit 0x67b55fbf: records[idx].field_0, arg4 * 10^uint8(ext_call.return_data[0]) * records[idx].field_256 / 10^18
            s = arg4 * 10^uint8(ext_call.return_data[0]) * records[idx].field_256 / 10^18
            idx = idx + 1
            continue 
    require arg2 < 13
    sub_681e0ecd[arg2] = records.length
    return records.length
}



}
