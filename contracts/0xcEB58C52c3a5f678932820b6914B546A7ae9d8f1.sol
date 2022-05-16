contract main {




// =====================  Runtime code  =====================


#
#  - games(uint256 arg1)
#
const myBalance = eth.balance(this.address)


address owner;
array of struct stor1;
mapping of struct sub_1472b5b5;
mapping of struct sub_a0991efe;
array of struct sub_35ebd1c6;
array of struct sub_00c2efb4;
array of struct sub_f797d5c5;
array of struct sub_24d13101;
address adminAddress;
address feeAccount;
uint256 feeMake;
uint256 feeAffiliate;
mapping of uint256 tokens;

function sub_00c2efb4(?) {
    require arg2 < sub_00c2efb4[arg1].field_0
    return sub_00c2efb4[arg1][arg2].field_0
}

function sub_1472b5b5(?) {
    return sub_1472b5b5[arg1].field_0, 
           sub_1472b5b5[arg1].field_256,
           sub_1472b5b5[arg1].field_512,
           sub_1472b5b5[arg1].field_768,
           sub_1472b5b5[arg1].field_1024,
           sub_1472b5b5[arg1].field_1280,
           sub_1472b5b5[arg1].field_1536,
           sub_1472b5b5[arg1].field_1792,
           sub_1472b5b5[arg1].field_2048,
           sub_1472b5b5[arg1].field_2304,
           sub_1472b5b5[arg1].field_2560,
           sub_1472b5b5[arg1].field_2816,
           bool(sub_1472b5b5[arg1].field_3072)
}

function sub_24d13101(?) {
    require arg2 < sub_24d13101[arg1].field_0
    return sub_24d13101[arg1][arg2].field_0
}

function sub_35ebd1c6(?) {
    require arg2 < sub_35ebd1c6[arg1].field_0
    return sub_35ebd1c6[arg1][arg2].field_0
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function feeMake() {
    return feeMake
}

function feeAccount() {
    return feeAccount
}

function owner() {
    return owner
}

function sub_a0991efe(?) {
    return sub_a0991efe[arg1].field_0, 
           sub_a0991efe[arg1].field_256,
           sub_a0991efe[arg1].field_512,
           sub_a0991efe[arg1].field_768,
           sub_a0991efe[arg1].field_1024,
           sub_a0991efe[arg1].field_1280,
           sub_a0991efe[arg1].field_1536,
           sub_a0991efe[arg1].field_1792,
           bool(sub_a0991efe[arg1].field_2048)
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function sub_f797d5c5(?) {
    require arg2 < sub_f797d5c5[arg1].field_0
    return sub_f797d5c5[arg1][arg2].field_0
}

function admin() {
    return adminAddress
}

function feeAffiliate() {
    return feeAffiliate
}

function _fallback() {
    revert
}

function sub_de2b3e60(?) {
    require msg.sender == adminAddress
    feeAffiliate = arg1
}

function changeFeeMake(uint256 arg1) {
    require msg.sender == adminAddress
    feeMake = arg1
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function changeFeeAccount(address arg1) {
    require msg.sender == adminAddress
    feeAccount = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    require msg.value + tokens[0][msg.sender] >= tokens[0][msg.sender]
    tokens[0][msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + tokens[0][msg.sender]);
}

function withdraw(uint256 arg1) {
    require arg1 <= tokens[0][msg.sender]
    require arg1 <= tokens[0][msg.sender]
    tokens[0][msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, tokens[0][msg.sender]);
}

function sub_d28fc937(?) {
    require msg.sender == owner
    require arg1 >= 1
    require stor1[arg1].field_2048
    require not stor1[arg1].field_1280
    stor1[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[arg1].field_768 = arg3
    stor1[arg1].field_1024 = arg4
    stor1[arg1].field_1280 = 1
}

function sub_c3a7029e(?) {
    require msg.sender == owner
    require stor1[arg1].field_2048
    require stor1[arg1].field_1280 == 1
    stor1[arg1].field_1280 = 2
    stor1[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[arg1].field_768 = arg3
    stor1[arg1].field_1024 = arg4
    stor1[arg1].field_1792 = arg5
}

function sub_a5e79481(?) {
    require msg.sender == owner
    require arg1 >= 1
    require arg4 >= 1
    require not stor1[arg1].field_2048
    stor1[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor1[arg1].field_1536 = arg4
    stor1[arg1].field_2048 = 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= tokens[address(arg1)][msg.sender]
    require arg2 <= tokens[address(arg1)][msg.sender]
    tokens[address(arg1)][msg.sender] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][msg.sender]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][msg.sender] >= tokens[address(arg1)][msg.sender]
    tokens[address(arg1)][msg.sender] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + tokens[address(arg1)][msg.sender]);
}

function getOrder(bytes32 arg1) {
    mem[128] = stor1[stor2[arg1].field_512][2].field_0
    idx = 128
    s = 0
    while stor1[stor2[arg1].field_512][2].length + 96 > idx:
        mem[idx + 32] = stor1[stor2[arg1].field_512][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1[stor2[arg1].field_512].field_1280, 
           Array(len=stor1[stor2[arg1].field_512][2].length, data=mem[128 len stor1[stor2[arg1].field_512][2].length]),
           sub_1472b5b5[arg1].field_1024,
           sub_1472b5b5[arg1].field_1280,
           sub_1472b5b5[arg1].field_768,
           sub_1472b5b5[arg1].field_1792,
           sub_1472b5b5[arg1].field_1536,
           sub_1472b5b5[arg1].field_2560,
           sub_1472b5b5[arg1].field_512
}

function getTrade(bytes32 arg1) {
    mem[128] = stor1[stor3[arg1].field_0][2].field_0
    idx = 128
    s = 0
    while stor1[stor3[arg1].field_0][2].length + 96 > idx:
        mem[idx + 32] = stor1[stor3[arg1].field_0][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1[stor3[arg1].field_0].field_1280, 
           Array(len=stor1[stor3[arg1].field_0][2].length, data=mem[128 len stor1[stor3[arg1].field_0][2].length]),
           sub_1472b5b5[stor3[arg1].field_256].field_1024,
           sub_1472b5b5[stor3[arg1].field_256].field_1280,
           sub_a0991efe[arg1].field_1792,
           sub_a0991efe[arg1].field_1024,
           sub_a0991efe[arg1].field_1280,
           sub_a0991efe[arg1].field_256,
           sub_a0991efe[arg1].field_1536,
           sub_a0991efe[arg1].field_0
}

function sub_5f6752c8(?) {
    if sub_24d13101[arg1].field_0:
        mem[128] = sub_24d13101[arg1].field_0
        if (32 * sub_24d13101[arg1].field_0) + 32 > 64:
            mem[160] = sub_24d13101[arg1].field_256
            idx = 160
            s = 1
            while (32 * sub_24d13101[arg1].field_0) + 96 > idx:
                mem[idx + 32] = sub_24d13101[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_24d13101[arg1].field_0) + 128] = 32
    mem[(32 * sub_24d13101[arg1].field_0) + 160] = sub_24d13101[arg1].field_0
    mem[(32 * sub_24d13101[arg1].field_0) + 192 len floor32(sub_24d13101[arg1].field_0)] = mem[128 len floor32(sub_24d13101[arg1].field_0)]
    return memory
      from (32 * sub_24d13101[arg1].field_0) + 128
       len (96 * sub_24d13101[arg1].field_0) + 64
}

function sub_95b39784(?) {
    if sub_f797d5c5[arg1].field_0:
        mem[128] = sub_f797d5c5[arg1].field_0
        if (32 * sub_f797d5c5[arg1].field_0) + 32 > 64:
            mem[160] = sub_f797d5c5[arg1].field_256
            idx = 160
            s = 1
            while (32 * sub_f797d5c5[arg1].field_0) + 96 > idx:
                mem[idx + 32] = sub_f797d5c5[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_f797d5c5[arg1].field_0) + 128] = 32
    mem[(32 * sub_f797d5c5[arg1].field_0) + 160] = sub_f797d5c5[arg1].field_0
    mem[(32 * sub_f797d5c5[arg1].field_0) + 192 len floor32(sub_f797d5c5[arg1].field_0)] = mem[128 len floor32(sub_f797d5c5[arg1].field_0)]
    return memory
      from (32 * sub_f797d5c5[arg1].field_0) + 128
       len (96 * sub_f797d5c5[arg1].field_0) + 64
}

function getMyOrders(address arg1) {
    if sub_35ebd1c6[address(arg1)].field_0:
        mem[128] = sub_35ebd1c6[address(arg1)].field_0
        if (32 * sub_35ebd1c6[address(arg1)].field_0) + 32 > 64:
            mem[160] = sub_35ebd1c6[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * sub_35ebd1c6[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = sub_35ebd1c6[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_35ebd1c6[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_35ebd1c6[address(arg1)].field_0) + 160] = sub_35ebd1c6[address(arg1)].field_0
    mem[(32 * sub_35ebd1c6[address(arg1)].field_0) + 192 len floor32(sub_35ebd1c6[address(arg1)].field_0)] = mem[128 len floor32(sub_35ebd1c6[address(arg1)].field_0)]
    return memory
      from (32 * sub_35ebd1c6[address(arg1)].field_0) + 128
       len (96 * sub_35ebd1c6[address(arg1)].field_0) + 64
}

function sub_11a05f5f(?) {
    if not sub_00c2efb4[address(arg1)].field_0:
        mem[(32 * sub_00c2efb4[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_00c2efb4[address(arg1)].field_0) + 160] = sub_00c2efb4[address(arg1)].field_0
        mem[(32 * sub_00c2efb4[address(arg1)].field_0) + 192 len floor32(sub_00c2efb4[address(arg1)].field_0)] = mem[128 len floor32(sub_00c2efb4[address(arg1)].field_0)]
        return memory
          from (32 * sub_00c2efb4[address(arg1)].field_0) + 128
           len (96 * sub_00c2efb4[address(arg1)].field_0) + 64
    mem[128] = sub_00c2efb4[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_00c2efb4[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_00c2efb4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_00c2efb4[address(arg1)].field_0) + 192 len floor32(sub_00c2efb4[address(arg1)].field_0)] = mem[128 len floor32(sub_00c2efb4[address(arg1)].field_0)]
    return Array(len=sub_00c2efb4[address(arg1)].field_0, data=mem[128 len floor32(sub_00c2efb4[address(arg1)].field_0)], mem[(32 * sub_00c2efb4[address(arg1)].field_0) + floor32(sub_00c2efb4[address(arg1)].field_0) + 192 len (32 * sub_00c2efb4[address(arg1)].field_0) - floor32(sub_00c2efb4[address(arg1)].field_0)]), 
}

function sub_4e8ed9aa(?) payable {
    require stor1[arg1].field_2048
    require not stor1[arg1].field_1280
    require arg4 > 0
    require arg6 > 0
    require arg2 <= 2
    require not sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_3072
    if not arg5:
        require msg.value > 0
        require msg.value == arg6
    else:
        require arg6 >= 10
        require ext_code.size(arg5)
        call arg5.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if 1 == arg2:
        require not arg3
    else:
        require arg3
        if 1 == arg2:
            require not arg3
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_0 = msg.sender
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_1024 = arg2
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_1280 = arg3
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_768 = arg4
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_2560 = 1
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_1536 = arg5
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_2048 = 0
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_3072 = 1
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_1792 = arg6
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_512 = arg1
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_256 = arg8
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_0 = sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_0
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_256 = sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_256
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_1536 = sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_1536
    sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_3072 = uint8(bool(sub_1472b5b5[this.address][arg1][arg5][arg7][msg.sender].field_3072))
    sub_35ebd1c6[address(msg.sender)].field_0++
    sub_35ebd1c6[address(msg.sender)][sub_35ebd1c6[address(msg.sender)].field_0].field_0 = sha3(this.address, arg1, arg5, arg7, msg.sender)
    sub_f797d5c5[arg1].field_0++
    sub_f797d5c5[arg1][sub_f797d5c5[arg1].field_0].field_0 = sha3(this.address, arg1, arg5, arg7, msg.sender)
    emit 0x189af657: arg1, arg2, arg3, arg4, arg5, arg6, arg7, msg.sender
}

function sub_7861216e(?) {
    require stor1[arg1].field_2048
    if arg2:
        if arg2 != 1:
            if arg2 != 2:
                return 0
            if stor1[arg1].field_768 >= stor1[arg1].field_1024:
                return 0
            require stor1[arg1].field_768 <= stor1[arg1].field_1024
            if stor1[arg1].field_1024 - stor1[arg1].field_768 < arg3:
                return 0
        else:
            if stor1[arg1].field_768 != stor1[arg1].field_1024:
                if arg2 != 2:
                    return 0
                if stor1[arg1].field_768 >= stor1[arg1].field_1024:
                    return 0
                require stor1[arg1].field_768 <= stor1[arg1].field_1024
                if stor1[arg1].field_1024 - stor1[arg1].field_768 < arg3:
                    return 0
    else:
        if stor1[arg1].field_768 <= stor1[arg1].field_1024:
            if arg2 != 1:
                if arg2 != 2:
                    return 0
                if stor1[arg1].field_768 >= stor1[arg1].field_1024:
                    return 0
                require stor1[arg1].field_768 <= stor1[arg1].field_1024
                if stor1[arg1].field_1024 - stor1[arg1].field_768 < arg3:
                    return 0
            else:
                if stor1[arg1].field_768 != stor1[arg1].field_1024:
                    if arg2 != 2:
                        return 0
                    if stor1[arg1].field_768 >= stor1[arg1].field_1024:
                        return 0
                    require stor1[arg1].field_768 <= stor1[arg1].field_1024
                    if stor1[arg1].field_1024 - stor1[arg1].field_768 < arg3:
                        return 0
        else:
            require stor1[arg1].field_1024 <= stor1[arg1].field_768
            if stor1[arg1].field_768 - stor1[arg1].field_1024 < arg3:
                if arg2 != 1:
                    if arg2 != 2:
                        return 0
                    if stor1[arg1].field_768 >= stor1[arg1].field_1024:
                        return 0
                    require stor1[arg1].field_768 <= stor1[arg1].field_1024
                    if stor1[arg1].field_1024 - stor1[arg1].field_768 < arg3:
                        return 0
                else:
                    if stor1[arg1].field_768 != stor1[arg1].field_1024:
                        if arg2 != 2:
                            return 0
                        if stor1[arg1].field_768 >= stor1[arg1].field_1024:
                            return 0
                        require stor1[arg1].field_768 <= stor1[arg1].field_1024
                        if stor1[arg1].field_1024 - stor1[arg1].field_768 < arg3:
                            return 0
    return 1
}

function cancelOrder(bytes32 arg1) {
    require sub_1472b5b5[arg1].field_3072
    require msg.sender == sub_1472b5b5[arg1].field_0
    require sub_1472b5b5[arg1].field_2560 < 2
    require stor1[stor2[arg1].field_512].field_2048
    require not stor1[stor2[arg1].field_512].field_1280
    if not sub_1472b5b5[arg1].field_768:
        require 0 <= sub_1472b5b5[arg1].field_1792
        require sub_1472b5b5[arg1].field_1792 > 0
        sub_1472b5b5[arg1].field_2560 = 2
        sub_1472b5b5[arg1].field_2304 = sub_1472b5b5[arg1].field_1792
        if not sub_1472b5b5[arg1].field_1536:
            call msg.sender with:
               value sub_1472b5b5[arg1].field_1792 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_1472b5b5[arg1].field_1536)
            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_1472b5b5[arg1].field_1792
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit 0x2dadd0e4: sub_1472b5b5[arg1].field_512, arg1, msg.sender, sub_1472b5b5[arg1].field_1792
    else:
        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
        require sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0
        sub_1472b5b5[arg1].field_2560 = 2
        sub_1472b5b5[arg1].field_2304 = sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
        if not sub_1472b5b5[arg1].field_1536:
            call msg.sender with:
               value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_1472b5b5[arg1].field_1536)
            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit 0x2dadd0e4: sub_1472b5b5[arg1].field_512, arg1, msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
}

function sub_11f4ebb2(?) payable {
    require sub_1472b5b5[arg1].field_3072
    require sub_1472b5b5[arg1].field_0 != msg.sender
    require sub_1472b5b5[arg1].field_2560 < 2
    require stor1[stor2[arg1].field_512].field_2048
    require stor1[stor2[arg1].field_512].field_1280 < 1
    require sub_1472b5b5[arg1].field_2304 <= sub_1472b5b5[arg1].field_1792
    require arg2 + sub_1472b5b5[arg1].field_2048 >= sub_1472b5b5[arg1].field_2048
    if not sub_1472b5b5[arg1].field_768:
        require 0 <= sub_1472b5b5[arg1].field_1792 - sub_1472b5b5[arg1].field_2304
    else:
        require arg2 + sub_1472b5b5[arg1].field_2048 / 100 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == arg2 + sub_1472b5b5[arg1].field_2048 / 100
        require arg2 + sub_1472b5b5[arg1].field_2048 / 100 * sub_1472b5b5[arg1].field_768 <= sub_1472b5b5[arg1].field_1792 - sub_1472b5b5[arg1].field_2304
    if not sub_1472b5b5[arg1].field_1536:
        require msg.value > 0
        require msg.value == arg2
    else:
        require ext_code.size(sub_1472b5b5[arg1].field_1536)
        call sub_1472b5b5[arg1].field_1536.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require arg2 + sub_1472b5b5[arg1].field_2048 >= sub_1472b5b5[arg1].field_2048
    sub_1472b5b5[arg1].field_2048 += arg2
    require sub_1472b5b5[arg1].field_2816 + 1 >= sub_1472b5b5[arg1].field_2816
    sub_1472b5b5[arg1].field_2816++
    require not sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_2048
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_512 = msg.sender
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_1536 = 1
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_1024 = arg2
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_256 = arg1
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_2048 = 1
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_1792 = sub_1472b5b5[arg1].field_768
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_0 = sub_1472b5b5[arg1].field_512
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_1280 = sub_1472b5b5[arg1].field_1536
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_768 = arg4
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_512 = sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_512
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_768 = sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_768
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_1280 = sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_1280
    sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_2048 = uint8(bool(sub_a0991efe[this.address][stor2[arg1].field_512][stor2[arg1].field_1536][arg3][msg.sender].field_2048))
    sub_00c2efb4[address(msg.sender)].field_0++
    sub_00c2efb4[address(msg.sender)][sub_00c2efb4[address(msg.sender)].field_0].field_0 = sha3(this.address, sub_1472b5b5[arg1].field_512, sub_1472b5b5[arg1].field_1536, arg3, msg.sender)
    sub_24d13101[arg1].field_0++
    sub_24d13101[arg1][sub_24d13101[arg1].field_0].field_0 = sha3(this.address, sub_1472b5b5[arg1].field_512, sub_1472b5b5[arg1].field_1536, arg3, msg.sender)
    emit 0x2833234e: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, arg2, arg3, address(msg.sender)
}

function sub_71409bda(?) {
    require sub_a0991efe[arg1].field_2048
    require msg.sender == sub_a0991efe[arg1].field_512
    require 4 > sub_a0991efe[arg1].field_1536
    require sub_1472b5b5[stor3[arg1].field_256].field_3072
    require stor1[stor2[stor3[arg1].field_256].field_512].field_2048
    require stor1[stor2[stor3[arg1].field_256].field_512].field_1280 == 2
    sub_a0991efe[arg1].field_1536 = 4
    require stor1[stor2[stor3[arg1].field_256].field_512].field_2048
    if not sub_1472b5b5[stor3[arg1].field_256].field_1024:
        if stor1[stor2[stor3[arg1].field_256].field_512].field_768 > stor1[stor2[stor3[arg1].field_256].field_512].field_1024:
            require stor1[stor2[stor3[arg1].field_256].field_512].field_1024 <= stor1[stor2[stor3[arg1].field_256].field_512].field_768
            if stor1[stor2[stor3[arg1].field_256].field_512].field_768 - stor1[stor2[stor3[arg1].field_256].field_512].field_1024 >= sub_1472b5b5[stor3[arg1].field_256].field_1280:
                emit 0xaf83effe: sub_1472b5b5[stor3[arg1].field_256].field_512, arg1, sub_1472b5b5[stor3[arg1].field_256].field_1536, msg.sender, 0, 0
                return 0
    if 1 == sub_1472b5b5[stor3[arg1].field_256].field_1024:
        if stor1[stor2[stor3[arg1].field_256].field_512].field_768 == stor1[stor2[stor3[arg1].field_256].field_512].field_1024:
            emit 0xaf83effe: sub_1472b5b5[stor3[arg1].field_256].field_512, arg1, sub_1472b5b5[stor3[arg1].field_256].field_1536, msg.sender, 0, 0
            return 0
    if 2 == sub_1472b5b5[stor3[arg1].field_256].field_1024:
        if stor1[stor2[stor3[arg1].field_256].field_512].field_768 < stor1[stor2[stor3[arg1].field_256].field_512].field_1024:
            require stor1[stor2[stor3[arg1].field_256].field_512].field_768 <= stor1[stor2[stor3[arg1].field_256].field_512].field_1024
            if stor1[stor2[stor3[arg1].field_256].field_512].field_1024 - stor1[stor2[stor3[arg1].field_256].field_512].field_768 >= sub_1472b5b5[stor3[arg1].field_256].field_1280:
                emit 0xaf83effe: sub_1472b5b5[stor3[arg1].field_256].field_512, arg1, sub_1472b5b5[stor3[arg1].field_256].field_1536, msg.sender, 0, 0
                return 0
    if not sub_a0991efe[arg1].field_1792:
        if feeMake:
            require not 0 / feeMake
        require sub_a0991efe[arg1].field_1024 >= 0
        require 0 <= sub_a0991efe[arg1].field_1024
        if sub_a0991efe[arg1].field_768:
            require tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768]
        require tokens[stor2[stor3[arg1].field_256].field_1536][stor9] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
        require 0 <= tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
        if not sub_1472b5b5[stor3[arg1].field_256].field_1536:
            call msg.sender with:
               value sub_a0991efe[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_1472b5b5[stor3[arg1].field_256].field_1536)
            call sub_1472b5b5[stor3[arg1].field_256].field_1536.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_a0991efe[arg1].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit 0xaf83effe: sub_1472b5b5[stor3[arg1].field_256].field_512, arg1, sub_1472b5b5[stor3[arg1].field_256].field_1536, msg.sender, 1, sub_a0991efe[arg1].field_1024
        return 1, sub_a0991efe[arg1].field_1024
    require sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / sub_a0991efe[arg1].field_1792 == sub_a0991efe[arg1].field_1024
    if not feeMake:
        require sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100) >= sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100
        require 0 <= sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100)
        if sub_a0991efe[arg1].field_768:
            require tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768]
        require tokens[stor2[stor3[arg1].field_256].field_1536][stor9] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
        require 0 <= tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
        if not sub_1472b5b5[stor3[arg1].field_256].field_1536:
            call msg.sender with:
               value sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_1472b5b5[stor3[arg1].field_256].field_1536)
            call sub_1472b5b5[stor3[arg1].field_256].field_1536.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit 0xaf83effe: sub_1472b5b5[stor3[arg1].field_256].field_512, arg1, sub_1472b5b5[stor3[arg1].field_256].field_1536, msg.sender, 1, sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100)
        return 1, sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100)
    require sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / feeMake == sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100
    require sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100) >= sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100
    require sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18 <= sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100)
    if not sub_a0991efe[arg1].field_768:
        require (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18) + tokens[stor2[stor3[arg1].field_256].field_1536][stor9] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
        require 0 <= (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18) + tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
        tokens[stor2[stor3[arg1].field_256].field_1536][stor9] += sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18
    else:
        if not sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18:
            require tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768]
            require (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18) + tokens[stor2[stor3[arg1].field_256].field_1536][stor9] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
            require 0 <= (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18) + tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
            tokens[stor2[stor3[arg1].field_256].field_1536][stor9] += sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18
        else:
            require feeAffiliate * sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18 / sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18 == feeAffiliate
            require (feeAffiliate * sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18 / 100) + tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768]
            tokens[stor2[stor3[arg1].field_256].field_1536][stor3[arg1].field_768] += feeAffiliate * sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18 / 100
            require (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18) + tokens[stor2[stor3[arg1].field_256].field_1536][stor9] >= tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
            require feeAffiliate * sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18 / 100 <= (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18) + tokens[stor2[stor3[arg1].field_256].field_1536][stor9]
            tokens[stor2[stor3[arg1].field_256].field_1536][stor9] = (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18) + tokens[stor2[stor3[arg1].field_256].field_1536][stor9] - (feeAffiliate * sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18 / 100)
    if not sub_1472b5b5[stor3[arg1].field_256].field_1536:
        call msg.sender with:
           value sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100) - (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_1472b5b5[stor3[arg1].field_256].field_1536)
        call sub_1472b5b5[stor3[arg1].field_256].field_1536.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100) - (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit 0xaf83effe: sub_1472b5b5[stor3[arg1].field_256].field_512, arg1, sub_1472b5b5[stor3[arg1].field_256].field_1536, msg.sender, 1, sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100) - (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18)
    return 1, 
           sub_a0991efe[arg1].field_1024 + (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100) - (sub_a0991efe[arg1].field_1024 * sub_a0991efe[arg1].field_1792 / 100 * feeMake / 10^18)
}

function sub_f9829beb(?) {
    require sub_1472b5b5[arg1].field_3072
    require msg.sender == sub_1472b5b5[arg1].field_0
    require 4 > sub_1472b5b5[arg1].field_2560
    require stor1[stor2[arg1].field_512].field_2048
    require stor1[stor2[arg1].field_512].field_1280 == 2
    require stor1[stor2[arg1].field_512].field_2048
    if sub_1472b5b5[arg1].field_1024:
        if sub_1472b5b5[arg1].field_1024 != 1:
            if sub_1472b5b5[arg1].field_1024 != 2:
                if sub_1472b5b5[arg1].field_2560 != 1:
                    sub_1472b5b5[arg1].field_2560 = 4
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                    return 0
                if not sub_1472b5b5[arg1].field_768:
                    require 0 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                    return 0, sub_1472b5b5[arg1].field_1792
                require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                sub_1472b5b5[arg1].field_2560 = 4
                if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                    if not sub_1472b5b5[arg1].field_1536:
                        call msg.sender with:
                           value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_1472b5b5[arg1].field_1536)
                        call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
            if stor1[stor2[arg1].field_512].field_768 >= stor1[stor2[arg1].field_512].field_1024:
                if sub_1472b5b5[arg1].field_2560 != 1:
                    sub_1472b5b5[arg1].field_2560 = 4
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                    return 0
                if not sub_1472b5b5[arg1].field_768:
                    require 0 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                    return 0, sub_1472b5b5[arg1].field_1792
                require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                sub_1472b5b5[arg1].field_2560 = 4
                if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                    if not sub_1472b5b5[arg1].field_1536:
                        call msg.sender with:
                           value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_1472b5b5[arg1].field_1536)
                        call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
            require stor1[stor2[arg1].field_512].field_768 <= stor1[stor2[arg1].field_512].field_1024
            if stor1[stor2[arg1].field_512].field_1024 - stor1[stor2[arg1].field_512].field_768 < sub_1472b5b5[arg1].field_1280:
                if sub_1472b5b5[arg1].field_2560 != 1:
                    sub_1472b5b5[arg1].field_2560 = 4
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                    return 0
                if not sub_1472b5b5[arg1].field_768:
                    require 0 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                    return 0, sub_1472b5b5[arg1].field_1792
                require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                sub_1472b5b5[arg1].field_2560 = 4
                if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                    if not sub_1472b5b5[arg1].field_1536:
                        call msg.sender with:
                           value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_1472b5b5[arg1].field_1536)
                        call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
        else:
            if stor1[stor2[arg1].field_512].field_768 != stor1[stor2[arg1].field_512].field_1024:
                if sub_1472b5b5[arg1].field_1024 != 2:
                    if sub_1472b5b5[arg1].field_2560 != 1:
                        sub_1472b5b5[arg1].field_2560 = 4
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                        return 0
                    if not sub_1472b5b5[arg1].field_768:
                        require 0 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                        return 0, sub_1472b5b5[arg1].field_1792
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                if stor1[stor2[arg1].field_512].field_768 >= stor1[stor2[arg1].field_512].field_1024:
                    if sub_1472b5b5[arg1].field_2560 != 1:
                        sub_1472b5b5[arg1].field_2560 = 4
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                        return 0
                    if not sub_1472b5b5[arg1].field_768:
                        require 0 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                        return 0, sub_1472b5b5[arg1].field_1792
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                require stor1[stor2[arg1].field_512].field_768 <= stor1[stor2[arg1].field_512].field_1024
                if stor1[stor2[arg1].field_512].field_1024 - stor1[stor2[arg1].field_512].field_768 < sub_1472b5b5[arg1].field_1280:
                    if sub_1472b5b5[arg1].field_2560 != 1:
                        sub_1472b5b5[arg1].field_2560 = 4
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                        return 0
                    if not sub_1472b5b5[arg1].field_768:
                        require 0 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                        return 0, sub_1472b5b5[arg1].field_1792
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
    else:
        if stor1[stor2[arg1].field_512].field_768 <= stor1[stor2[arg1].field_512].field_1024:
            if sub_1472b5b5[arg1].field_1024 != 1:
                if sub_1472b5b5[arg1].field_1024 != 2:
                    if sub_1472b5b5[arg1].field_2560 != 1:
                        sub_1472b5b5[arg1].field_2560 = 4
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                        return 0
                    if not sub_1472b5b5[arg1].field_768:
                        require 0 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                        return 0, sub_1472b5b5[arg1].field_1792
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                if stor1[stor2[arg1].field_512].field_768 >= stor1[stor2[arg1].field_512].field_1024:
                    if sub_1472b5b5[arg1].field_2560 != 1:
                        sub_1472b5b5[arg1].field_2560 = 4
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                        return 0
                    if not sub_1472b5b5[arg1].field_768:
                        require 0 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                        return 0, sub_1472b5b5[arg1].field_1792
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                require stor1[stor2[arg1].field_512].field_768 <= stor1[stor2[arg1].field_512].field_1024
                if stor1[stor2[arg1].field_512].field_1024 - stor1[stor2[arg1].field_512].field_768 < sub_1472b5b5[arg1].field_1280:
                    if sub_1472b5b5[arg1].field_2560 != 1:
                        sub_1472b5b5[arg1].field_2560 = 4
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                        return 0
                    if not sub_1472b5b5[arg1].field_768:
                        require 0 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                        return 0, sub_1472b5b5[arg1].field_1792
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                    require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                    sub_1472b5b5[arg1].field_2560 = 4
                    if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                        if not sub_1472b5b5[arg1].field_1536:
                            call msg.sender with:
                               value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_1472b5b5[arg1].field_1536)
                            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
            else:
                if stor1[stor2[arg1].field_512].field_768 != stor1[stor2[arg1].field_512].field_1024:
                    if sub_1472b5b5[arg1].field_1024 != 2:
                        if sub_1472b5b5[arg1].field_2560 != 1:
                            sub_1472b5b5[arg1].field_2560 = 4
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                            return 0
                        if not sub_1472b5b5[arg1].field_768:
                            require 0 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                            return 0, sub_1472b5b5[arg1].field_1792
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    if stor1[stor2[arg1].field_512].field_768 >= stor1[stor2[arg1].field_512].field_1024:
                        if sub_1472b5b5[arg1].field_2560 != 1:
                            sub_1472b5b5[arg1].field_2560 = 4
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                            return 0
                        if not sub_1472b5b5[arg1].field_768:
                            require 0 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                            return 0, sub_1472b5b5[arg1].field_1792
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    require stor1[stor2[arg1].field_512].field_768 <= stor1[stor2[arg1].field_512].field_1024
                    if stor1[stor2[arg1].field_512].field_1024 - stor1[stor2[arg1].field_512].field_768 < sub_1472b5b5[arg1].field_1280:
                        if sub_1472b5b5[arg1].field_2560 != 1:
                            sub_1472b5b5[arg1].field_2560 = 4
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                            return 0
                        if not sub_1472b5b5[arg1].field_768:
                            require 0 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                            return 0, sub_1472b5b5[arg1].field_1792
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
        else:
            require stor1[stor2[arg1].field_512].field_1024 <= stor1[stor2[arg1].field_512].field_768
            if stor1[stor2[arg1].field_512].field_768 - stor1[stor2[arg1].field_512].field_1024 < sub_1472b5b5[arg1].field_1280:
                if sub_1472b5b5[arg1].field_1024 != 1:
                    if sub_1472b5b5[arg1].field_1024 != 2:
                        if sub_1472b5b5[arg1].field_2560 != 1:
                            sub_1472b5b5[arg1].field_2560 = 4
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                            return 0
                        if not sub_1472b5b5[arg1].field_768:
                            require 0 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                            return 0, sub_1472b5b5[arg1].field_1792
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    if stor1[stor2[arg1].field_512].field_768 >= stor1[stor2[arg1].field_512].field_1024:
                        if sub_1472b5b5[arg1].field_2560 != 1:
                            sub_1472b5b5[arg1].field_2560 = 4
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                            return 0
                        if not sub_1472b5b5[arg1].field_768:
                            require 0 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                            return 0, sub_1472b5b5[arg1].field_1792
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                    require stor1[stor2[arg1].field_512].field_768 <= stor1[stor2[arg1].field_512].field_1024
                    if stor1[stor2[arg1].field_512].field_1024 - stor1[stor2[arg1].field_512].field_768 < sub_1472b5b5[arg1].field_1280:
                        if sub_1472b5b5[arg1].field_2560 != 1:
                            sub_1472b5b5[arg1].field_2560 = 4
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                            return 0
                        if not sub_1472b5b5[arg1].field_768:
                            require 0 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                            return 0, sub_1472b5b5[arg1].field_1792
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                        require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                        sub_1472b5b5[arg1].field_2560 = 4
                        if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                            if not sub_1472b5b5[arg1].field_1536:
                                call msg.sender with:
                                   value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                else:
                    if stor1[stor2[arg1].field_512].field_768 != stor1[stor2[arg1].field_512].field_1024:
                        if sub_1472b5b5[arg1].field_1024 != 2:
                            if sub_1472b5b5[arg1].field_2560 != 1:
                                sub_1472b5b5[arg1].field_2560 = 4
                                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                                return 0
                            if not sub_1472b5b5[arg1].field_768:
                                require 0 <= sub_1472b5b5[arg1].field_1792
                                sub_1472b5b5[arg1].field_2560 = 4
                                if sub_1472b5b5[arg1].field_1792 > 0:
                                    if not sub_1472b5b5[arg1].field_1536:
                                        call msg.sender with:
                                           value sub_1472b5b5[arg1].field_1792 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                        call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_1472b5b5[arg1].field_1792
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                                return 0, sub_1472b5b5[arg1].field_1792
                            require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                            require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        if stor1[stor2[arg1].field_512].field_768 >= stor1[stor2[arg1].field_512].field_1024:
                            if sub_1472b5b5[arg1].field_2560 != 1:
                                sub_1472b5b5[arg1].field_2560 = 4
                                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                                return 0
                            if not sub_1472b5b5[arg1].field_768:
                                require 0 <= sub_1472b5b5[arg1].field_1792
                                sub_1472b5b5[arg1].field_2560 = 4
                                if sub_1472b5b5[arg1].field_1792 > 0:
                                    if not sub_1472b5b5[arg1].field_1536:
                                        call msg.sender with:
                                           value sub_1472b5b5[arg1].field_1792 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                        call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_1472b5b5[arg1].field_1792
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                                return 0, sub_1472b5b5[arg1].field_1792
                            require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                            require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                        require stor1[stor2[arg1].field_512].field_768 <= stor1[stor2[arg1].field_512].field_1024
                        if stor1[stor2[arg1].field_512].field_1024 - stor1[stor2[arg1].field_512].field_768 < sub_1472b5b5[arg1].field_1280:
                            if sub_1472b5b5[arg1].field_2560 != 1:
                                sub_1472b5b5[arg1].field_2560 = 4
                                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, 0
                                return 0
                            if not sub_1472b5b5[arg1].field_768:
                                require 0 <= sub_1472b5b5[arg1].field_1792
                                sub_1472b5b5[arg1].field_2560 = 4
                                if sub_1472b5b5[arg1].field_1792 > 0:
                                    if not sub_1472b5b5[arg1].field_1536:
                                        call msg.sender with:
                                           value sub_1472b5b5[arg1].field_1792 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                        call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_1472b5b5[arg1].field_1792
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792
                                return 0, sub_1472b5b5[arg1].field_1792
                            require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / sub_1472b5b5[arg1].field_768 == sub_1472b5b5[arg1].field_2048
                            require sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100 <= sub_1472b5b5[arg1].field_1792
                            sub_1472b5b5[arg1].field_2560 = 4
                            if sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) > 0:
                                if not sub_1472b5b5[arg1].field_1536:
                                    call msg.sender with:
                                       value sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_1472b5b5[arg1].field_1536)
                                    call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
                            return 0, sub_1472b5b5[arg1].field_1792 - (sub_1472b5b5[arg1].field_2048 * sub_1472b5b5[arg1].field_768 / 100)
    sub_1472b5b5[arg1].field_2560 = 4
    if not sub_1472b5b5[arg1].field_2048:
        if sub_1472b5b5[arg1].field_256:
            require tokens[stor2[arg1].field_1536][stor2[arg1].field_256] >= tokens[stor2[arg1].field_1536][stor2[arg1].field_256]
        require tokens[stor2[arg1].field_1536][stor9] >= 0
        require 0 <= tokens[stor2[arg1].field_1536][stor9]
        require 0 <= sub_1472b5b5[arg1].field_2048
        require sub_1472b5b5[arg1].field_2304 <= sub_1472b5b5[arg1].field_1792
        require sub_1472b5b5[arg1].field_2048 >= 0
        if not sub_1472b5b5[arg1].field_1536:
            call msg.sender with:
               value sub_1472b5b5[arg1].field_2048 + sub_1472b5b5[arg1].field_1792 - sub_1472b5b5[arg1].field_2304 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_1472b5b5[arg1].field_1536)
            call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_1472b5b5[arg1].field_2048 + sub_1472b5b5[arg1].field_1792 - sub_1472b5b5[arg1].field_2304
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 1, 0
        return 1, sub_1472b5b5[arg1].field_2048 + sub_1472b5b5[arg1].field_1792 - sub_1472b5b5[arg1].field_2304
    require feeMake * sub_1472b5b5[arg1].field_2048 / sub_1472b5b5[arg1].field_2048 == feeMake
    if not sub_1472b5b5[arg1].field_256:
        require tokens[stor2[arg1].field_1536][stor9] + (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18) >= feeMake * sub_1472b5b5[arg1].field_2048 / 10^18
        require 0 <= tokens[stor2[arg1].field_1536][stor9] + (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18)
        tokens[stor2[arg1].field_1536][stor9] += feeMake * sub_1472b5b5[arg1].field_2048 / 10^18
    else:
        if not feeMake * sub_1472b5b5[arg1].field_2048 / 10^18:
            require tokens[stor2[arg1].field_1536][stor2[arg1].field_256] >= tokens[stor2[arg1].field_1536][stor2[arg1].field_256]
            require tokens[stor2[arg1].field_1536][stor9] + (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18) >= feeMake * sub_1472b5b5[arg1].field_2048 / 10^18
            require 0 <= tokens[stor2[arg1].field_1536][stor9] + (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18)
            tokens[stor2[arg1].field_1536][stor9] += feeMake * sub_1472b5b5[arg1].field_2048 / 10^18
        else:
            require feeAffiliate * feeMake * sub_1472b5b5[arg1].field_2048 / 10^18 / feeMake * sub_1472b5b5[arg1].field_2048 / 10^18 == feeAffiliate
            require (feeAffiliate * feeMake * sub_1472b5b5[arg1].field_2048 / 10^18 / 100) + tokens[stor2[arg1].field_1536][stor2[arg1].field_256] >= tokens[stor2[arg1].field_1536][stor2[arg1].field_256]
            tokens[stor2[arg1].field_1536][stor2[arg1].field_256] += feeAffiliate * feeMake * sub_1472b5b5[arg1].field_2048 / 10^18 / 100
            require tokens[stor2[arg1].field_1536][stor9] + (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18) >= feeMake * sub_1472b5b5[arg1].field_2048 / 10^18
            require feeAffiliate * feeMake * sub_1472b5b5[arg1].field_2048 / 10^18 / 100 <= tokens[stor2[arg1].field_1536][stor9] + (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18)
            tokens[stor2[arg1].field_1536][stor9] = tokens[stor2[arg1].field_1536][stor9] + (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18) - (feeAffiliate * feeMake * sub_1472b5b5[arg1].field_2048 / 10^18 / 100)
    require feeMake * sub_1472b5b5[arg1].field_2048 / 10^18 <= sub_1472b5b5[arg1].field_2048
    require sub_1472b5b5[arg1].field_2304 <= sub_1472b5b5[arg1].field_1792
    require sub_1472b5b5[arg1].field_2048 - (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18) >= 0
    if not sub_1472b5b5[arg1].field_1536:
        call msg.sender with:
           value sub_1472b5b5[arg1].field_2048 - (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18) + sub_1472b5b5[arg1].field_1792 - sub_1472b5b5[arg1].field_2304 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_1472b5b5[arg1].field_1536)
        call sub_1472b5b5[arg1].field_1536.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_1472b5b5[arg1].field_2048 - (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18) + sub_1472b5b5[arg1].field_1792 - sub_1472b5b5[arg1].field_2304
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit 0x1b76fa6f: sub_1472b5b5[arg1].field_512, arg1, sub_1472b5b5[arg1].field_1536, msg.sender, 1, 0
    return 1, 
           sub_1472b5b5[arg1].field_2048 - (feeMake * sub_1472b5b5[arg1].field_2048 / 10^18) + sub_1472b5b5[arg1].field_1792 - sub_1472b5b5[arg1].field_2304
}



}
