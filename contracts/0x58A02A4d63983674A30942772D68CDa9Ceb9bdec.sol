contract main {




// =====================  Runtime code  =====================


uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sub_df1a1c80;
uint256 sub_c1538f24;
mapping of uint256 sub_40e7d419;
uint256 totalSupply;
mapping of uint256 sub_0f0f2b66;
mapping of uint256 userEthBalances;
mapping of uint256 sub_fe6887f7;
mapping of uint8 stor11;
mapping of uint256 sub_1d320588;
array of struct sub_051475dd;
array of struct sub_5e6b8ac0;
uint256 sub_70d9939d;
array of struct sub_7b787965;
array of struct sub_073c3d5f;
uint256 sub_2d2af096;
array of struct sub_fae2a451;
array of struct sub_5cf35226;
uint256 sub_e84384be;
mapping of uint8 stor22;
mapping of uint8 stor23;
uint256 airAmount;
array of struct sub_4279d08e;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address beneficiaryAddress;
address feeReceiverAddress;
address sub_b66caabaAddress;
address stor31;
mapping of address gParent;

function sub_051475dd(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_051475dd.length
    return uint256(sub_051475dd[arg1].field_0)
}

function name() {
    return name[0 len name.length]
}

function sub_073c3d5f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_073c3d5f.length
    return sub_073c3d5f[arg1].field_0
}

function airAmount() {
    return airAmount
}

function airDropList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function sub_0f0f2b66(?) {
    require calldata.size - 4 >= 32
    return sub_0f0f2b66[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_1d320588(?) {
    require calldata.size - 4 >= 32
    return sub_1d320588[arg1]
}

function sub_2d2af096(?) {
    return sub_2d2af096
}

function decimals() {
    return decimals
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_40e7d419(?) {
    require calldata.size - 4 >= 32
    return sub_40e7d419[arg1]
}

function sub_4279d08e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4279d08e.length
    return sub_4279d08e[arg1].field_0
}

function sub_5cf35226(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_5cf35226.length
    return sub_5cf35226[arg1].field_0
}

function sub_5e6b8ac0(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_5e6b8ac0.length
    return sub_5e6b8ac0[arg1].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_70d9939d(?) {
    return sub_70d9939d
}

function sub_7b787965(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7b787965.length
    return uint256(sub_7b787965[arg1].field_0)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function userEthBalances(address arg1) {
    require calldata.size - 4 >= 32
    return userEthBalances[arg1]
}

function sub_ab3ca0a1(?) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function feeReceiver() {
    return feeReceiverAddress
}

function sub_b66caaba(?) {
    return sub_b66caabaAddress
}

function sub_c1538f24(?) {
    return sub_c1538f24
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function sub_df1a1c80(?) {
    return sub_df1a1c80
}

function sub_e84384be(?) {
    return sub_e84384be
}

function gParent(address arg1) {
    require calldata.size - 4 >= 32
    return gParent[arg1]
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor23[arg1])
}

function sub_fae2a451(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_fae2a451.length
    return uint256(sub_fae2a451[arg1].field_0)
}

function sub_fe6887f7(?) {
    require calldata.size - 4 >= 32
    return sub_fe6887f7[arg1]
}

function sub_0d1e082c(?) {
    require calldata.size - 4 >= 32
    require msg.sender == beneficiaryAddress
    stor31 = arg1
}

function sub_dc091c6e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == beneficiaryAddress
    sub_b66caabaAddress = arg1
}

function setDelayTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == beneficiaryAddress
    sub_df1a1c80 = arg1
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == beneficiaryAddress
    feeReceiverAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setBlack(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == beneficiaryAddress
    stor23[address(arg1)] = uint8(arg2)
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if beneficiaryAddress == msg.sender:
        call arg1 with:
           value 10^15 * arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function close(address arg1) {
    require calldata.size - 4 >= 32
    if beneficiaryAddress == msg.sender:
        stor0 = 1
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    if arg2 == 100:
        if not gParent[address(msg.sender)]:
            gParent[address(msg.sender)] = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    if arg3 == 100:
        if not gParent[address(arg1)]:
            gParent[address(arg1)] = arg2
    return 1
}

function sub_0f2a453f(?) {
    if not sub_4279d08e.length:
        mem[(32 * sub_4279d08e.length) + 128] = 32
        mem[(32 * sub_4279d08e.length) + 160] = sub_4279d08e.length
        mem[(32 * sub_4279d08e.length) + 192 len floor32(sub_4279d08e.length)] = mem[128 len floor32(sub_4279d08e.length)]
        return memory
          from (32 * sub_4279d08e.length) + 128
           len (96 * sub_4279d08e.length) + 64
    mem[128] = address(sub_4279d08e.field_0)
    idx = 128
    s = 0
    while (32 * sub_4279d08e.length) + 96 > idx:
        mem[idx + 32] = sub_4279d08e[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_4279d08e.length) + 192 len floor32(sub_4279d08e.length)] = mem[128 len floor32(sub_4279d08e.length)]
    return Array(len=sub_4279d08e.length, data=mem[128 len floor32(sub_4279d08e.length)], mem[(32 * sub_4279d08e.length) + floor32(sub_4279d08e.length) + 192 len (32 * sub_4279d08e.length) - floor32(sub_4279d08e.length)]), 
}

function sub_168565c0(?) {
    if sub_5cf35226.length:
        mem[128] = address(sub_5cf35226.field_0)
        idx = 128
        s = 0
        while (32 * sub_5cf35226.length) + 96 > idx:
            mem[idx + 32] = sub_5cf35226[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_fae2a451.length:
        mem[(32 * sub_5cf35226.length) + 160] = uint256(sub_fae2a451.field_0)
        idx = (32 * sub_5cf35226.length) + 160
        s = 0
        while (32 * sub_5cf35226.length) + (32 * sub_fae2a451.length) + 128 > idx:
            mem[idx + 32] = uint256(sub_fae2a451[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_5cf35226.length) + (32 * sub_fae2a451.length) + 256 len floor32(sub_5cf35226.length)] = mem[128 len floor32(sub_5cf35226.length)]
    mem[(64 * sub_5cf35226.length) + (32 * sub_fae2a451.length) + 256] = sub_fae2a451.length
    mem[(64 * sub_5cf35226.length) + (32 * sub_fae2a451.length) + 288 len floor32(sub_fae2a451.length)] = mem[(32 * sub_5cf35226.length) + 160 len floor32(sub_fae2a451.length)]
    return Array(len=sub_5cf35226.length, data=mem[128 len floor32(sub_5cf35226.length)], mem[(32 * sub_5cf35226.length) + (32 * sub_fae2a451.length) + floor32(sub_5cf35226.length) + 256 len (32 * sub_5cf35226.length) + (32 * sub_fae2a451.length) + -floor32(sub_5cf35226.length) + 32]), 
           (32 * sub_5cf35226.length) + 96
}

function sub_b41f35a3(?) {
    if sub_5e6b8ac0.length:
        mem[128] = address(sub_5e6b8ac0.field_0)
        idx = 128
        s = 0
        while (32 * sub_5e6b8ac0.length) + 96 > idx:
            mem[idx + 32] = sub_5e6b8ac0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_051475dd.length:
        mem[(32 * sub_5e6b8ac0.length) + 160] = uint256(sub_051475dd.field_0)
        idx = (32 * sub_5e6b8ac0.length) + 160
        s = 0
        while (32 * sub_5e6b8ac0.length) + (32 * sub_051475dd.length) + 128 > idx:
            mem[idx + 32] = uint256(sub_051475dd[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_5e6b8ac0.length) + (32 * sub_051475dd.length) + 256 len floor32(sub_5e6b8ac0.length)] = mem[128 len floor32(sub_5e6b8ac0.length)]
    mem[(64 * sub_5e6b8ac0.length) + (32 * sub_051475dd.length) + 256] = sub_051475dd.length
    mem[(64 * sub_5e6b8ac0.length) + (32 * sub_051475dd.length) + 288 len floor32(sub_051475dd.length)] = mem[(32 * sub_5e6b8ac0.length) + 160 len floor32(sub_051475dd.length)]
    return Array(len=sub_5e6b8ac0.length, data=mem[128 len floor32(sub_5e6b8ac0.length)], mem[(32 * sub_5e6b8ac0.length) + (32 * sub_051475dd.length) + floor32(sub_5e6b8ac0.length) + 256 len (32 * sub_5e6b8ac0.length) + (32 * sub_051475dd.length) + -floor32(sub_5e6b8ac0.length) + 32]), 
           (32 * sub_5e6b8ac0.length) + 96
}

function sub_c88c02f9(?) {
    if sub_073c3d5f.length:
        mem[128] = address(sub_073c3d5f.field_0)
        idx = 128
        s = 0
        while (32 * sub_073c3d5f.length) + 96 > idx:
            mem[idx + 32] = sub_073c3d5f[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_7b787965.length:
        mem[(32 * sub_073c3d5f.length) + 160] = uint256(sub_7b787965.field_0)
        idx = (32 * sub_073c3d5f.length) + 160
        s = 0
        while (32 * sub_073c3d5f.length) + (32 * sub_7b787965.length) + 128 > idx:
            mem[idx + 32] = uint256(sub_7b787965[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_073c3d5f.length) + (32 * sub_7b787965.length) + 256 len floor32(sub_073c3d5f.length)] = mem[128 len floor32(sub_073c3d5f.length)]
    mem[(64 * sub_073c3d5f.length) + (32 * sub_7b787965.length) + 256] = sub_7b787965.length
    mem[(64 * sub_073c3d5f.length) + (32 * sub_7b787965.length) + 288 len floor32(sub_7b787965.length)] = mem[(32 * sub_073c3d5f.length) + 160 len floor32(sub_7b787965.length)]
    return Array(len=sub_073c3d5f.length, data=mem[128 len floor32(sub_073c3d5f.length)], mem[(32 * sub_073c3d5f.length) + (32 * sub_7b787965.length) + floor32(sub_073c3d5f.length) + 256 len (32 * sub_073c3d5f.length) + (32 * sub_7b787965.length) + -floor32(sub_073c3d5f.length) + 32]), 
           (32 * sub_073c3d5f.length) + 96
}

function _fallback() payable {
    if beneficiaryAddress != msg.sender:
        require not stor0
        require not stor23[address(msg.sender)]
        if not msg.value:
            require not stor22[address(msg.sender)]
            require msg.sender
            require balanceOf[address(this.address)] >= 188
            require balanceOf[address(msg.sender)] + 188 > balanceOf[address(msg.sender)]
            balanceOf[address(this.address)] -= 188
            balanceOf[address(msg.sender)] += 188
            emit Transfer(188, this.address, msg.sender);
            require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
            stor22[address(msg.sender)] = 1
            airAmount++
            sub_4279d08e.length++
            sub_4279d08e[sub_4279d08e.length].field_0 = msg.sender
            emit 0x3033cd46 
        else:
            if msg.value == 10^14:
                require eth.balance(this.address) >= 100 * 10^18
                require sub_0f0f2b66[address(msg.sender)]
                if msg.value == 10^14:
                    require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (360 * 24 * 3600)
                    sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                    if userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) > 0:
                        sub_2d2af096 = sub_2d2af096 + userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100)
                        userEthBalances[address(msg.sender)] = 0
                        call feeReceiverAddress with:
                           value (5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value wei
                             gas 2300 * is_zero(value) wei
                        sub_7b787965.length++
                        uint256(sub_7b787965[sub_7b787965.length].field_0) = userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value
                        sub_073c3d5f.length++
                        sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                        emit 0x5978855c 
                else:
                    if msg.value == 3 * 10^14:
                        require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (720 * 24 * 3600)
                        sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                        if userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) > 0:
                            sub_2d2af096 = sub_2d2af096 + userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100)
                            userEthBalances[address(msg.sender)] = 0
                            call feeReceiverAddress with:
                               value (5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value wei
                                 gas 2300 * is_zero(value) wei
                            sub_7b787965.length++
                            uint256(sub_7b787965[sub_7b787965.length].field_0) = userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value
                            sub_073c3d5f.length++
                            sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                            emit 0x5978855c 
                    else:
                        if msg.value == 6 * 10^14:
                            require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (1440 * 24 * 3600)
                            sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                            if 2 * userEthBalances[address(msg.sender)] > 0:
                                sub_2d2af096 += 2 * userEthBalances[address(msg.sender)]
                                userEthBalances[address(msg.sender)] = 0
                                call feeReceiverAddress with:
                                   value 10 * userEthBalances[address(msg.sender)] / 1000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value (2 * userEthBalances[address(msg.sender)]) - (10 * userEthBalances[address(msg.sender)] / 1000) + msg.value wei
                                     gas 2300 * is_zero(value) wei
                                sub_7b787965.length++
                                uint256(sub_7b787965[sub_7b787965.length].field_0) = (2 * userEthBalances[address(msg.sender)]) - (10 * userEthBalances[address(msg.sender)] / 1000) + msg.value
                                sub_073c3d5f.length++
                                sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                                emit 0x5978855c 
            else:
                if msg.value == 3 * 10^14:
                    require eth.balance(this.address) >= 100 * 10^18
                    require sub_0f0f2b66[address(msg.sender)]
                    if msg.value == 10^14:
                        require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (360 * 24 * 3600)
                        sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                        if userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) > 0:
                            sub_2d2af096 = sub_2d2af096 + userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100)
                            userEthBalances[address(msg.sender)] = 0
                            call feeReceiverAddress with:
                               value (5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value wei
                                 gas 2300 * is_zero(value) wei
                            sub_7b787965.length++
                            uint256(sub_7b787965[sub_7b787965.length].field_0) = userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value
                            sub_073c3d5f.length++
                            sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                            emit 0x5978855c 
                    else:
                        if msg.value == 3 * 10^14:
                            require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (720 * 24 * 3600)
                            sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                            if userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) > 0:
                                sub_2d2af096 = sub_2d2af096 + userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100)
                                userEthBalances[address(msg.sender)] = 0
                                call feeReceiverAddress with:
                                   value (5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value wei
                                     gas 2300 * is_zero(value) wei
                                sub_7b787965.length++
                                uint256(sub_7b787965[sub_7b787965.length].field_0) = userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value
                                sub_073c3d5f.length++
                                sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                                emit 0x5978855c 
                        else:
                            if msg.value == 6 * 10^14:
                                require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (1440 * 24 * 3600)
                                sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                                if 2 * userEthBalances[address(msg.sender)] > 0:
                                    sub_2d2af096 += 2 * userEthBalances[address(msg.sender)]
                                    userEthBalances[address(msg.sender)] = 0
                                    call feeReceiverAddress with:
                                       value 10 * userEthBalances[address(msg.sender)] / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value (2 * userEthBalances[address(msg.sender)]) - (10 * userEthBalances[address(msg.sender)] / 1000) + msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    sub_7b787965.length++
                                    uint256(sub_7b787965[sub_7b787965.length].field_0) = (2 * userEthBalances[address(msg.sender)]) - (10 * userEthBalances[address(msg.sender)] / 1000) + msg.value
                                    sub_073c3d5f.length++
                                    sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                                    emit 0x5978855c 
                else:
                    if msg.value == 6 * 10^14:
                        require eth.balance(this.address) >= 100 * 10^18
                        require sub_0f0f2b66[address(msg.sender)]
                        if msg.value == 10^14:
                            require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (360 * 24 * 3600)
                            sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                            if userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) > 0:
                                sub_2d2af096 = sub_2d2af096 + userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100)
                                userEthBalances[address(msg.sender)] = 0
                                call feeReceiverAddress with:
                                   value (5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value wei
                                     gas 2300 * is_zero(value) wei
                                sub_7b787965.length++
                                uint256(sub_7b787965[sub_7b787965.length].field_0) = userEthBalances[address(msg.sender)] + (15 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 15 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value
                                sub_073c3d5f.length++
                                sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                                emit 0x5978855c 
                        else:
                            if msg.value == 3 * 10^14:
                                require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (720 * 24 * 3600)
                                sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                                if userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) > 0:
                                    sub_2d2af096 = sub_2d2af096 + userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100)
                                    userEthBalances[address(msg.sender)] = 0
                                    call feeReceiverAddress with:
                                       value (5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    sub_7b787965.length++
                                    uint256(sub_7b787965[sub_7b787965.length].field_0) = userEthBalances[address(msg.sender)] + (40 * userEthBalances[address(msg.sender)] / 100) - ((5 * userEthBalances[address(msg.sender)]) + (5 * 40 * userEthBalances[address(msg.sender)] / 100) / 1000) + msg.value
                                    sub_073c3d5f.length++
                                    sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                                    emit 0x5978855c 
                            else:
                                if msg.value == 6 * 10^14:
                                    require block.timestamp > sub_0f0f2b66[address(msg.sender)] + (1440 * 24 * 3600)
                                    sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                                    if 2 * userEthBalances[address(msg.sender)] > 0:
                                        sub_2d2af096 += 2 * userEthBalances[address(msg.sender)]
                                        userEthBalances[address(msg.sender)] = 0
                                        call feeReceiverAddress with:
                                           value 10 * userEthBalances[address(msg.sender)] / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value (2 * userEthBalances[address(msg.sender)]) - (10 * userEthBalances[address(msg.sender)] / 1000) + msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        sub_7b787965.length++
                                        uint256(sub_7b787965[sub_7b787965.length].field_0) = (2 * userEthBalances[address(msg.sender)]) - (10 * userEthBalances[address(msg.sender)] / 1000) + msg.value
                                        sub_073c3d5f.length++
                                        sub_073c3d5f[sub_073c3d5f.length].field_0 = msg.sender
                                        emit 0x5978855c 
                    else:
                        if msg.value == 2 * 10^14:
                            require sub_0f0f2b66[address(msg.sender)]
                            require block.timestamp <= sub_0f0f2b66[address(msg.sender)] + (24 * 3600)
                            require gParent[address(msg.sender)]
                            userEthBalances[address(msg.sender)] = 0
                            call msg.sender with:
                               value 80 * userEthBalances[address(msg.sender)] / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor23[address(msg.sender)] = 1
                            sub_c1538f24 += -60 * sub_40e7d419[address(msg.sender)]
                        else:
                            require stor22[address(msg.sender)]
                            require not userEthBalances[address(msg.sender)]
                            require msg.value >= 10^17
                            require msg.value <= 10 * 10^18
                            require gParent[address(msg.sender)]
                            sub_40e7d419[address(msg.sender)] = sub_df1a1c80
                            sub_c1538f24 += 60 * sub_df1a1c80
                            sub_0f0f2b66[address(msg.sender)] = block.timestamp + sub_c1538f24
                            userEthBalances[address(msg.sender)] = msg.value
                            sub_051475dd.length++
                            uint256(sub_051475dd[sub_051475dd.length].field_0) = msg.value
                            sub_5e6b8ac0.length++
                            sub_5e6b8ac0[sub_5e6b8ac0.length].field_0 = msg.sender
                            sub_70d9939d += msg.value
                            emit 0x33585251 
                            mem[0] = msg.sender
                            mem[32] = 32
                            if eth.balance(this.address) >= 150 * 10^18:
                                call sub_b66caabaAddress with:
                                   value eth.balance(this.address) - 150 * 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            s = msg.value
                            s = 0
                            s = 0
                            idx = stor[sha3(mem[0 len 64])]
                            while address(idx):
                                if msg.value > userEthBalances[address(idx)]:
                                    if userEthBalances[address(idx)] >= 10^18:
                                        if not uint8(s):
                                            if not stor11[address(msg.sender)]:
                                                sub_1d320588[address(idx)]++
                                                stor11[address(msg.sender)] = 1
                                            sub_fe6887f7[address(idx)] += msg.value
                                            if sub_fe6887f7[address(idx)] < 100 * 10^18:
                                                if 5 * userEthBalances[address(idx)] / 100 > 0:
                                                    if not stor23[address(idx)]:
                                                        call address(idx) with:
                                                           value 5 * userEthBalances[address(idx)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        sub_fae2a451.length++
                                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * userEthBalances[address(idx)] / 100
                                                        sub_5cf35226.length++
                                                        sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                    else:
                                                        call stor31 with:
                                                           value 5 * userEthBalances[address(idx)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        sub_fae2a451.length++
                                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * userEthBalances[address(idx)] / 100
                                                        sub_5cf35226.length++
                                                        sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                    sub_e84384be += 5 * userEthBalances[address(idx)] / 100
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 5 * userEthBalances[address(idx)] / 100
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 20:
                                                if 5 * userEthBalances[address(idx)] / 100 > 0:
                                                    if not stor23[address(idx)]:
                                                        call address(idx) with:
                                                           value 5 * userEthBalances[address(idx)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        sub_fae2a451.length++
                                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * userEthBalances[address(idx)] / 100
                                                        sub_5cf35226.length++
                                                        sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                    else:
                                                        call stor31 with:
                                                           value 5 * userEthBalances[address(idx)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        sub_fae2a451.length++
                                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * userEthBalances[address(idx)] / 100
                                                        sub_5cf35226.length++
                                                        sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                    sub_e84384be += 5 * userEthBalances[address(idx)] / 100
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 5 * userEthBalances[address(idx)] / 100
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if 6 * userEthBalances[address(idx)] / 100 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 6 * userEthBalances[address(idx)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 6 * userEthBalances[address(idx)] / 100
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 6 * userEthBalances[address(idx)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 6 * userEthBalances[address(idx)] / 100
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 6 * userEthBalances[address(idx)] / 100
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 6 * userEthBalances[address(idx)] / 100
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 1:
                                            if sub_fe6887f7[address(idx)] < 100 * 10^18:
                                                if 2 * userEthBalances[address(idx)] / 100 > 0:
                                                    if not stor23[address(idx)]:
                                                        call address(idx) with:
                                                           value 2 * userEthBalances[address(idx)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        sub_fae2a451.length++
                                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * userEthBalances[address(idx)] / 100
                                                        sub_5cf35226.length++
                                                        sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                    else:
                                                        call stor31 with:
                                                           value 2 * userEthBalances[address(idx)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        sub_fae2a451.length++
                                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * userEthBalances[address(idx)] / 100
                                                        sub_5cf35226.length++
                                                        sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                    sub_e84384be += 2 * userEthBalances[address(idx)] / 100
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 2 * userEthBalances[address(idx)] / 100
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 20:
                                                if 2 * userEthBalances[address(idx)] / 100 > 0:
                                                    if not stor23[address(idx)]:
                                                        call address(idx) with:
                                                           value 2 * userEthBalances[address(idx)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        sub_fae2a451.length++
                                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * userEthBalances[address(idx)] / 100
                                                        sub_5cf35226.length++
                                                        sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                    else:
                                                        call stor31 with:
                                                           value 2 * userEthBalances[address(idx)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        sub_fae2a451.length++
                                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * userEthBalances[address(idx)] / 100
                                                        sub_5cf35226.length++
                                                        sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                    sub_e84384be += 2 * userEthBalances[address(idx)] / 100
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 2 * userEthBalances[address(idx)] / 100
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if 3 * userEthBalances[address(idx)] / 100 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 3 * userEthBalances[address(idx)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * userEthBalances[address(idx)] / 100
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 3 * userEthBalances[address(idx)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * userEthBalances[address(idx)] / 100
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 3 * userEthBalances[address(idx)] / 100
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 3 * userEthBalances[address(idx)] / 100
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 2:
                                            if userEthBalances[address(idx)] / 100 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value userEthBalances[address(idx)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = userEthBalances[address(idx)] / 100
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value userEthBalances[address(idx)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = userEthBalances[address(idx)] / 100
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += userEthBalances[address(idx)] / 100
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = userEthBalances[address(idx)] / 100
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 3:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if 5 * userEthBalances[address(idx)] / 1000 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 5 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 5 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 5 * userEthBalances[address(idx)] / 1000
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 5 * userEthBalances[address(idx)] / 1000
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 4:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if 4 * userEthBalances[address(idx)] / 1000 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 4 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 4 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 4 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 4 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 4 * userEthBalances[address(idx)] / 1000
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 4 * userEthBalances[address(idx)] / 1000
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 5:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if 3 * userEthBalances[address(idx)] / 1000 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 3 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 3 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 3 * userEthBalances[address(idx)] / 1000
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 3 * userEthBalances[address(idx)] / 1000
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 6:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if 3 * userEthBalances[address(idx)] / 1000 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 3 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 3 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 3 * userEthBalances[address(idx)] / 1000
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 3 * userEthBalances[address(idx)] / 1000
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 7:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if 2 * userEthBalances[address(idx)] / 1000 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 2 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 2 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 2 * userEthBalances[address(idx)] / 1000
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 2 * userEthBalances[address(idx)] / 1000
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 8:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = userEthBalances[address(idx)]
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if 2 * userEthBalances[address(idx)] / 1000 > 0:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 2 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 2 * userEthBalances[address(idx)] / 1000 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * userEthBalances[address(idx)] / 1000
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 2 * userEthBalances[address(idx)] / 1000
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 2 * userEthBalances[address(idx)] / 1000
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) != 9:
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 0
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 0
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if sub_1d320588[address(idx)] < 10:
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = userEthBalances[address(idx)]
                                            s = 0
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if userEthBalances[address(idx)] / 1000 > 0:
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value userEthBalances[address(idx)] / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = userEthBalances[address(idx)] / 1000
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value userEthBalances[address(idx)] / 1000 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = userEthBalances[address(idx)] / 1000
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += userEthBalances[address(idx)] / 1000
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = userEthBalances[address(idx)]
                                        s = userEthBalances[address(idx)] / 1000
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if msg.value >= 10^18:
                                        if not uint8(s):
                                            if not stor11[address(msg.sender)]:
                                                sub_1d320588[address(idx)]++
                                                stor11[address(msg.sender)] = 1
                                            sub_fe6887f7[address(idx)] += msg.value
                                            if sub_fe6887f7[address(idx)] < 100 * 10^18:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 5 * 10^16 wei
                                                         gas 0 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * 10^16
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 5 * 10^16 wei
                                                         gas 0 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * 10^16
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 5 * 10^16
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 5 * 10^16
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 20:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 5 * 10^16 wei
                                                         gas 0 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * 10^16
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 5 * 10^16 wei
                                                         gas 0 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * 10^16
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 5 * 10^16
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 5 * 10^16
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 6 * 10^16 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 6 * 10^16
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 6 * 10^16 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 6 * 10^16
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 6 * 10^16
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 6 * 10^16
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 1:
                                            if sub_fe6887f7[address(idx)] < 100 * 10^18:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 2 * 10^16 wei
                                                         gas 0 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * 10^16
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 2 * 10^16 wei
                                                         gas 0 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * 10^16
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 2 * 10^16
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 2 * 10^16
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 20:
                                                if not stor23[address(idx)]:
                                                    call address(idx) with:
                                                       value 2 * 10^16 wei
                                                         gas 0 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * 10^16
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                                else:
                                                    call stor31 with:
                                                       value 2 * 10^16 wei
                                                         gas 0 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    sub_fae2a451.length++
                                                    uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * 10^16
                                                    sub_5cf35226.length++
                                                    sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                                sub_e84384be += 2 * 10^16
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 2 * 10^16
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 3 * 10^16 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * 10^16
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 3 * 10^16 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * 10^16
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 3 * 10^16
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 3 * 10^16
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 2:
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 10^16 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 10^16
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 10^16 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 10^16
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 10^16
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 10^16
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 3:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 5 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 5 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 5 * 10^15
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 5 * 10^15
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 4:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 4 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 4 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 4 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 4 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 4 * 10^15
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 4 * 10^15
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 5:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 3 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 3 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 3 * 10^15
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 3 * 10^15
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 6:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 3 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 3 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 3 * 10^15
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 3 * 10^15
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 7:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 2 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 2 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 2 * 10^15
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 2 * 10^15
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) == 8:
                                            if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if sub_1d320588[address(idx)] < 10:
                                                if uint8(s) >= 9:
                                                mem[0] = address(idx)
                                                mem[32] = 32
                                                s = 10^18
                                                s = 0
                                                s = s + 1
                                                idx = gParent[address(idx)]
                                                continue 
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 2 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 2 * 10^15 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * 10^15
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 2 * 10^15
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 2 * 10^15
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if uint8(s) != 9:
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 0
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 0
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if sub_1d320588[address(idx)] < 10:
                                            if uint8(s) >= 9:
                                            mem[0] = address(idx)
                                            mem[32] = 32
                                            s = 10^18
                                            s = 0
                                            s = s + 1
                                            idx = gParent[address(idx)]
                                            continue 
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 10^15 wei
                                                 gas 0 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 10^15
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 10^15 wei
                                                 gas 0 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 10^15
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 10^15
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = 10^18
                                        s = 10^15
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                if not uint8(s):
                                    if not stor11[address(msg.sender)]:
                                        sub_1d320588[address(idx)]++
                                        stor11[address(msg.sender)] = 1
                                    sub_fe6887f7[address(idx)] += msg.value
                                    if sub_fe6887f7[address(idx)] < 100 * 10^18:
                                        if 5 * msg.value / 100 > 0:
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 5 * msg.value / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * msg.value / 100
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 5 * msg.value / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * msg.value / 100
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 5 * msg.value / 100
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 5 * msg.value / 100
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if sub_1d320588[address(idx)] < 20:
                                        if 5 * msg.value / 100 > 0:
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 5 * msg.value / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * msg.value / 100
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 5 * msg.value / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * msg.value / 100
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 5 * msg.value / 100
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 5 * msg.value / 100
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if 6 * msg.value / 100 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 6 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 6 * msg.value / 100
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 6 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 6 * msg.value / 100
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 6 * msg.value / 100
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 6 * msg.value / 100
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) == 1:
                                    if sub_fe6887f7[address(idx)] < 100 * 10^18:
                                        if 2 * msg.value / 100 > 0:
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 2 * msg.value / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * msg.value / 100
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 2 * msg.value / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * msg.value / 100
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 2 * msg.value / 100
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 2 * msg.value / 100
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if sub_1d320588[address(idx)] < 20:
                                        if 2 * msg.value / 100 > 0:
                                            if not stor23[address(idx)]:
                                                call address(idx) with:
                                                   value 2 * msg.value / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * msg.value / 100
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                            else:
                                                call stor31 with:
                                                   value 2 * msg.value / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                sub_fae2a451.length++
                                                uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * msg.value / 100
                                                sub_5cf35226.length++
                                                sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                            sub_e84384be += 2 * msg.value / 100
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 2 * msg.value / 100
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if 3 * msg.value / 100 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 3 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * msg.value / 100
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 3 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * msg.value / 100
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 3 * msg.value / 100
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 3 * msg.value / 100
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) == 2:
                                    if msg.value / 100 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = msg.value / 100
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = msg.value / 100
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += msg.value / 100
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = msg.value / 100
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) == 3:
                                    if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if sub_1d320588[address(idx)] < 10:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if 5 * msg.value / 1000 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 5 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 5 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 5 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 5 * msg.value / 1000
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 5 * msg.value / 1000
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) == 4:
                                    if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if sub_1d320588[address(idx)] < 10:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if 4 * msg.value / 1000 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 4 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 4 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 4 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 4 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 4 * msg.value / 1000
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 4 * msg.value / 1000
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) == 5:
                                    if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if sub_1d320588[address(idx)] < 10:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if 3 * msg.value / 1000 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 3 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 3 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 3 * msg.value / 1000
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 3 * msg.value / 1000
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) == 6:
                                    if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if sub_1d320588[address(idx)] < 10:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if 3 * msg.value / 1000 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 3 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 3 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 3 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 3 * msg.value / 1000
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 3 * msg.value / 1000
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) == 7:
                                    if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if sub_1d320588[address(idx)] < 10:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if 2 * msg.value / 1000 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 2 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 2 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 2 * msg.value / 1000
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 2 * msg.value / 1000
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) == 8:
                                    if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if sub_1d320588[address(idx)] < 10:
                                        if uint8(s) >= 9:
                                        mem[0] = address(idx)
                                        mem[32] = 32
                                        s = msg.value
                                        s = 0
                                        s = s + 1
                                        idx = gParent[address(idx)]
                                        continue 
                                    if 2 * msg.value / 1000 > 0:
                                        if not stor23[address(idx)]:
                                            call address(idx) with:
                                               value 2 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                        else:
                                            call stor31 with:
                                               value 2 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            sub_fae2a451.length++
                                            uint256(sub_fae2a451[sub_fae2a451.length].field_0) = 2 * msg.value / 1000
                                            sub_5cf35226.length++
                                            sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                        sub_e84384be += 2 * msg.value / 1000
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 2 * msg.value / 1000
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if uint8(s) != 9:
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 0
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if sub_fe6887f7[address(idx)] < 20 * 10^18:
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 0
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if sub_1d320588[address(idx)] < 10:
                                    if uint8(s) >= 9:
                                    mem[0] = address(idx)
                                    mem[32] = 32
                                    s = msg.value
                                    s = 0
                                    s = s + 1
                                    idx = gParent[address(idx)]
                                    continue 
                                if msg.value / 1000 > 0:
                                    if not stor23[address(idx)]:
                                        call address(idx) with:
                                           value msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        sub_fae2a451.length++
                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = msg.value / 1000
                                        sub_5cf35226.length++
                                        sub_5cf35226[sub_5cf35226.length].field_0 = address(idx)
                                    else:
                                        call stor31 with:
                                           value msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        sub_fae2a451.length++
                                        uint256(sub_fae2a451[sub_fae2a451.length].field_0) = msg.value / 1000
                                        sub_5cf35226.length++
                                        sub_5cf35226[sub_5cf35226.length].field_0 = stor31
                                    sub_e84384be += msg.value / 1000
                                if uint8(s) >= 9:
                                mem[0] = address(idx)
                                mem[32] = 32
                                s = msg.value
                                s = msg.value / 1000
                                s = s + 1
                                idx = gParent[address(idx)]
                                continue 
}



}
