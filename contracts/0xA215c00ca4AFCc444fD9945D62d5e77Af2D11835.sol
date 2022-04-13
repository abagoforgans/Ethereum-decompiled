contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor17;
uint256 stor18;
uint256 stor19;
address stor20;
uint8 stor21; offset 152
uint8 stor21; offset 160
uint128 stor21; offset 176
uint128 stor21; offset 168
address stor21;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 1
    stor3.length.field_8 = '2' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 15
    stor4.length.field_8 = 'Floodgate Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'FLT' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 445 * 10^6 * 10^stor6
    stor8 = 5 * 10^6 * 10^stor6
    stor9 = 260 * 10^6 * 10^stor6
    stor10 = 200 * 10^stor6
    stor11 = 2500000 * 10^stor6
    stor12 = 5000
    stor13 = 6250
    stor14 = stor7 + stor8 + stor9
    stor15 = 3400
    stor17 = 10000 * 10^stor6
    stor18 = 182
    stor19 = 0
    Mask(88, 0, stor21.field_168) = 0
    Mask(80, 0, stor21.field_176) = 0
    require not msg.value
    uint8(stor21.field_160) = 3
    stor20 = msg.sender
    Mask(152, 0, stor21.field_0) = 0xd3f08954c5f5bb1d3f65b9b300b0c45a871c8b
    uint8(stor21.field_152) = 0
    stor1[0x7334c4b69a2108acc4f80af9ee1ab2b0fd73fb53] = 1020 * 10^18
    emit 0x6087145e: 1020 * 10^18
    emit 0x7334c4b6: 1020 * 10^18
    stor1[0x465144bc7affe2dcd769d84ffc88f90077092891] = 200 * 10^18
    emit 0x6087145e: 200 * 10^18
    emit 0x465144bc: 200 * 10^18
    stor1[0x465144bc7affe2dcd769d84ffc88f90077092891] = 200 * 10^18
    emit 0x6087145e: 200 * 10^18
    emit 0x465144bc: 200 * 10^18
    stor1[0xc3ac16c2fee1862e395a0fbac733cac1b0eae66a] = 200 * 10^18
    emit 0x6087145e: 200 * 10^18
    emit 0xc3ac16c2: 200 * 10^18
    stor1[0xc3ac16c2fee1862e395a0fbac733cac1b0eae66a] = 200 * 10^18
    emit 0x6087145e: 200 * 10^18
    emit 0xc3ac16c2: 200 * 10^18
    stor1[0xc3ac16c2fee1862e395a0fbac733cac1b0eae66a] = 200 * 10^18
    emit 0x6087145e: 200 * 10^18
    emit 0xc3ac16c2: 200 * 10^18
    stor1[0xc3ac16c2fee1862e395a0fbac733cac1b0eae66a] = 200 * 10^18
    emit 0x6087145e: 200 * 10^18
    emit 0xc3ac16c2: 200 * 10^18
    return code.data[2279 len 10284]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 sub_27d9f169;
uint256 sub_4f153fe8;
uint256 sub_91f4f96c;
uint256 minBuy;
uint256 maxBuy;
uint256 sub_625745e9;
uint256 sub_b9814e7f;
uint256 totalSupply;
uint256 sub_9982058c;
uint256 sub_b97ceb3c;
uint256 sub_d88ec4d8;
uint256 sub_f09c713c;
uint256 sub_5a8edfaa;
address ownerAddress;
uint8 state; offset 160
uint8 stor21; offset 168
uint8 stor21; offset 176
uint128 stor21; offset 176
uint128 stor21; offset 168
address sub_32a9678aAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_27d9f169(?) {
    return sub_27d9f169
}

function decimals() {
    return decimals
}

function sub_32a9678a(?) {
    return sub_32a9678aAddress
}

function sub_4f153fe8(?) {
    return sub_4f153fe8
}

function version() {
    return version[0 len version.length]
}

function sub_5a8edfaa(?) {
    return sub_5a8edfaa
}

function sub_625745e9(?) {
    return sub_625745e9
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function maxBuy() {
    return maxBuy
}

function minBuy() {
    return minBuy
}

function ownerAddress() {
    return ownerAddress
}

function sub_91f4f96c(?) {
    return sub_91f4f96c
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9982058c(?) {
    return sub_9982058c
}

function sub_b97ceb3c(?) {
    return sub_b97ceb3c
}

function sub_b9814e7f(?) {
    return sub_b9814e7f
}

function state() {
    require state <= 3
    return state
}

function sub_d88ec4d8(?) {
    return sub_d88ec4d8
}

function allowance(address arg1, address arg2) {
    require calldata.size == 68
    return allowance[address(arg1)][address(arg2)]
}

function sub_f09c713c(?) {
    return sub_f09c713c
}

function _fallback() payable {
    revert
}

function sub_5878f9d5(?) {
    require msg.sender == ownerAddress
    sub_32a9678aAddress = arg1
}

function sub_4dd1f537(?) {
    require msg.sender == ownerAddress
    require not uint8(stor21.field_176)
    state = 1
}

function sub_db4c6e70(?) {
    require msg.sender == ownerAddress
    require not uint8(stor21.field_168)
    state = 0
}

function sub_609f1d6e(?) {
    require msg.sender == ownerAddress
    require state <= 3
    if state:
        require state <= 3
        require state == 1
    state = 3
}

function approve(address arg1, uint256 arg2) {
    require calldata.size == 68
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_66ab4004(?) {
    if ownerAddress != msg.sender:
        require msg.sender == sub_32a9678aAddress
    require state <= 3
    require state <= 3
    if state:
        require state == 1
    if not state:
        Mask(88, 0, stor21.field_168) = 1
        sub_91f4f96c += sub_4f153fe8
        sub_4f153fe8 = 0
    else:
        Mask(80, 0, stor21.field_176) = 1
        emit 0x5bb4367a: sub_27d9f169
        totalSupply -= sub_27d9f169
        sub_27d9f169 = 0
        sub_b97ceb3c = block.number
    state = 2
}

function sub_c2e418e5(?) {
    require msg.sender == ownerAddress
    require state <= 3
    require state == 2
    require sub_91f4f96c
    require uint8(stor21.field_176)
    require uint8(stor21.field_168)
    require block.number > sub_b97ceb3c + sub_9982058c
    balanceOf[stor20] += sub_d88ec4d8
    sub_91f4f96c -= sub_d88ec4d8
    emit 0x1ef87e7f: sub_d88ec4d8, ownerAddress
    if sub_5a8edfaa + 1 >= sub_f09c713c:
        balanceOf[stor20] += sub_91f4f96c
        emit 0x1ef87e7f: sub_d88ec4d8, ownerAddress
    sub_b97ceb3c = block.number
    sub_5a8edfaa++
}

function transfer(address arg1, uint256 arg2) {
    require state <= 3
    require state == 2
    require calldata.size == 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require state <= 3
    require state == 2
    require calldata.size == 100
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_fd0d801e(?) {
    if ownerAddress != msg.sender:
        require msg.sender == sub_32a9678aAddress
    require state <= 3
    if state:
        require state <= 3
        require state == 1
    require arg2 >= minBuy
    require arg2 <= maxBuy
    require state <= 3
    require state <= 3
    if state:
        require state == 1
    if state:
        if sub_27d9f169 >= arg2:
            require state <= 3
            if state:
                sub_27d9f169 -= arg2
            else:
                sub_4f153fe8 = sub_27d9f169 - arg2
            if not sub_27d9f169 - arg2:
                if ownerAddress != msg.sender:
                    require msg.sender == sub_32a9678aAddress
                require state <= 3
                require state <= 3
                if state:
                    require state == 1
                if not state:
                    Mask(88, 0, stor21.field_168) = 1
                    sub_91f4f96c += sub_4f153fe8
                    sub_4f153fe8 = 0
                else:
                    Mask(80, 0, stor21.field_176) = 1
                    emit 0x5bb4367a: sub_27d9f169
                    totalSupply -= sub_27d9f169
                    sub_27d9f169 = 0
                    sub_b97ceb3c = block.number
                state = 2
        else:
            sub_91f4f96c = sub_91f4f96c - arg2 + sub_27d9f169
            require state <= 3
            if state:
                sub_27d9f169 = 0
            else:
                sub_4f153fe8 = 0
            if ownerAddress != msg.sender:
                require msg.sender == sub_32a9678aAddress
            require state <= 3
            require state <= 3
            if state:
                require state == 1
            if not state:
                Mask(88, 0, stor21.field_168) = 1
                sub_91f4f96c += sub_4f153fe8
                sub_4f153fe8 = 0
            else:
                Mask(80, 0, stor21.field_176) = 1
                emit 0x5bb4367a: sub_27d9f169
                totalSupply -= sub_27d9f169
                sub_27d9f169 = 0
                sub_b97ceb3c = block.number
            state = 2
    else:
        if sub_4f153fe8 >= arg2:
            require state <= 3
            if state:
                sub_27d9f169 = sub_4f153fe8 - arg2
            else:
                sub_4f153fe8 -= arg2
            if not sub_4f153fe8 - arg2:
                if ownerAddress != msg.sender:
                    require msg.sender == sub_32a9678aAddress
                require state <= 3
                require state <= 3
                if state:
                    require state == 1
                if not state:
                    Mask(88, 0, stor21.field_168) = 1
                    sub_91f4f96c += sub_4f153fe8
                    sub_4f153fe8 = 0
                else:
                    Mask(80, 0, stor21.field_176) = 1
                    emit 0x5bb4367a: sub_27d9f169
                    totalSupply -= sub_27d9f169
                    sub_27d9f169 = 0
                    sub_b97ceb3c = block.number
                state = 2
        else:
            sub_91f4f96c = sub_91f4f96c - arg2 + sub_4f153fe8
            require state <= 3
            if state:
                sub_27d9f169 = 0
            else:
                sub_4f153fe8 = 0
            if ownerAddress != msg.sender:
                require msg.sender == sub_32a9678aAddress
            require state <= 3
            require state <= 3
            if state:
                require state == 1
            if not state:
                Mask(88, 0, stor21.field_168) = 1
                sub_91f4f96c += sub_4f153fe8
                sub_4f153fe8 = 0
            else:
                Mask(80, 0, stor21.field_176) = 1
                emit 0x5bb4367a: sub_27d9f169
                totalSupply -= sub_27d9f169
                sub_27d9f169 = 0
                sub_b97ceb3c = block.number
            state = 2
    balanceOf[address(arg1)] += arg2
    emit 0x6087145e: arg2, arg1
}

function acceptSale() payable {
    require state <= 3
    if state:
        require state <= 3
        require state == 1
    require msg.value > 4 * 10^16
    require state <= 3
    if state:
        if msg.value:
            require msg.value
            require msg.value * sub_625745e9 / msg.value == sub_625745e9
        require msg.value * sub_625745e9 >= minBuy
        require msg.value * sub_625745e9 <= maxBuy
        require state <= 3
        require state <= 3
        if state:
            require state == 1
        if state:
            if sub_27d9f169 >= msg.value * sub_625745e9:
                require state <= 3
                if state:
                    sub_27d9f169 += -1 * msg.value * sub_625745e9
                else:
                    sub_4f153fe8 = sub_27d9f169 - (msg.value * sub_625745e9)
                if not sub_27d9f169 - (msg.value * sub_625745e9):
                    if ownerAddress != msg.sender:
                        require msg.sender == sub_32a9678aAddress
                    require state <= 3
                    require state <= 3
                    if state:
                        require state == 1
                    if not state:
                        Mask(88, 0, stor21.field_168) = 1
                        sub_91f4f96c += sub_4f153fe8
                        sub_4f153fe8 = 0
                    else:
                        Mask(80, 0, stor21.field_176) = 1
                        emit 0x5bb4367a: sub_27d9f169
                        totalSupply -= sub_27d9f169
                        sub_27d9f169 = 0
                        sub_b97ceb3c = block.number
                    state = 2
            else:
                sub_91f4f96c = sub_91f4f96c - (msg.value * sub_625745e9) + sub_27d9f169
                require state <= 3
                if state:
                    sub_27d9f169 = 0
                else:
                    sub_4f153fe8 = 0
                if ownerAddress != msg.sender:
                    require msg.sender == sub_32a9678aAddress
                require state <= 3
                require state <= 3
                if state:
                    require state == 1
                if not state:
                    Mask(88, 0, stor21.field_168) = 1
                    sub_91f4f96c += sub_4f153fe8
                    sub_4f153fe8 = 0
                else:
                    Mask(80, 0, stor21.field_176) = 1
                    emit 0x5bb4367a: sub_27d9f169
                    totalSupply -= sub_27d9f169
                    sub_27d9f169 = 0
                    sub_b97ceb3c = block.number
                state = 2
        else:
            if sub_4f153fe8 >= msg.value * sub_625745e9:
                require state <= 3
                if state:
                    sub_27d9f169 = sub_4f153fe8 - (msg.value * sub_625745e9)
                else:
                    sub_4f153fe8 += -1 * msg.value * sub_625745e9
                if not sub_4f153fe8 - (msg.value * sub_625745e9):
                    if ownerAddress != msg.sender:
                        require msg.sender == sub_32a9678aAddress
                    require state <= 3
                    require state <= 3
                    if state:
                        require state == 1
                    if not state:
                        Mask(88, 0, stor21.field_168) = 1
                        sub_91f4f96c += sub_4f153fe8
                        sub_4f153fe8 = 0
                    else:
                        Mask(80, 0, stor21.field_176) = 1
                        emit 0x5bb4367a: sub_27d9f169
                        totalSupply -= sub_27d9f169
                        sub_27d9f169 = 0
                        sub_b97ceb3c = block.number
                    state = 2
            else:
                sub_91f4f96c = sub_91f4f96c - (msg.value * sub_625745e9) + sub_4f153fe8
                require state <= 3
                if state:
                    sub_27d9f169 = 0
                else:
                    sub_4f153fe8 = 0
                if ownerAddress != msg.sender:
                    require msg.sender == sub_32a9678aAddress
                require state <= 3
                require state <= 3
                if state:
                    require state == 1
                if not state:
                    Mask(88, 0, stor21.field_168) = 1
                    sub_91f4f96c += sub_4f153fe8
                    sub_4f153fe8 = 0
                else:
                    Mask(80, 0, stor21.field_176) = 1
                    emit 0x5bb4367a: sub_27d9f169
                    totalSupply -= sub_27d9f169
                    sub_27d9f169 = 0
                    sub_b97ceb3c = block.number
                state = 2
        call ownerAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balanceOf[address(msg.sender)] += msg.value * sub_625745e9
        emit 0x6087145e: (msg.value * sub_625745e9), msg.sender
    else:
        if msg.value:
            require msg.value
            require msg.value * sub_b9814e7f / msg.value == sub_b9814e7f
        require msg.value * sub_b9814e7f >= minBuy
        require msg.value * sub_b9814e7f <= maxBuy
        require state <= 3
        require state <= 3
        if state:
            require state == 1
        if state:
            if sub_27d9f169 >= msg.value * sub_b9814e7f:
                require state <= 3
                if state:
                    sub_27d9f169 += -1 * msg.value * sub_b9814e7f
                else:
                    sub_4f153fe8 = sub_27d9f169 - (msg.value * sub_b9814e7f)
                if not sub_27d9f169 - (msg.value * sub_b9814e7f):
                    if ownerAddress != msg.sender:
                        require msg.sender == sub_32a9678aAddress
                    require state <= 3
                    require state <= 3
                    if state:
                        require state == 1
                    if not state:
                        Mask(88, 0, stor21.field_168) = 1
                        sub_91f4f96c += sub_4f153fe8
                        sub_4f153fe8 = 0
                    else:
                        Mask(80, 0, stor21.field_176) = 1
                        emit 0x5bb4367a: sub_27d9f169
                        totalSupply -= sub_27d9f169
                        sub_27d9f169 = 0
                        sub_b97ceb3c = block.number
                    state = 2
            else:
                sub_91f4f96c = sub_91f4f96c - (msg.value * sub_b9814e7f) + sub_27d9f169
                require state <= 3
                if state:
                    sub_27d9f169 = 0
                else:
                    sub_4f153fe8 = 0
                if ownerAddress != msg.sender:
                    require msg.sender == sub_32a9678aAddress
                require state <= 3
                require state <= 3
                if state:
                    require state == 1
                if not state:
                    Mask(88, 0, stor21.field_168) = 1
                    sub_91f4f96c += sub_4f153fe8
                    sub_4f153fe8 = 0
                else:
                    Mask(80, 0, stor21.field_176) = 1
                    emit 0x5bb4367a: sub_27d9f169
                    totalSupply -= sub_27d9f169
                    sub_27d9f169 = 0
                    sub_b97ceb3c = block.number
                state = 2
        else:
            if sub_4f153fe8 >= msg.value * sub_b9814e7f:
                require state <= 3
                if state:
                    sub_27d9f169 = sub_4f153fe8 - (msg.value * sub_b9814e7f)
                else:
                    sub_4f153fe8 += -1 * msg.value * sub_b9814e7f
                if not sub_4f153fe8 - (msg.value * sub_b9814e7f):
                    if ownerAddress != msg.sender:
                        require msg.sender == sub_32a9678aAddress
                    require state <= 3
                    require state <= 3
                    if state:
                        require state == 1
                    if not state:
                        Mask(88, 0, stor21.field_168) = 1
                        sub_91f4f96c += sub_4f153fe8
                        sub_4f153fe8 = 0
                    else:
                        Mask(80, 0, stor21.field_176) = 1
                        emit 0x5bb4367a: sub_27d9f169
                        totalSupply -= sub_27d9f169
                        sub_27d9f169 = 0
                        sub_b97ceb3c = block.number
                    state = 2
            else:
                sub_91f4f96c = sub_91f4f96c - (msg.value * sub_b9814e7f) + sub_4f153fe8
                require state <= 3
                if state:
                    sub_27d9f169 = 0
                else:
                    sub_4f153fe8 = 0
                if ownerAddress != msg.sender:
                    require msg.sender == sub_32a9678aAddress
                require state <= 3
                require state <= 3
                if state:
                    require state == 1
                if not state:
                    Mask(88, 0, stor21.field_168) = 1
                    sub_91f4f96c += sub_4f153fe8
                    sub_4f153fe8 = 0
                else:
                    Mask(80, 0, stor21.field_176) = 1
                    emit 0x5bb4367a: sub_27d9f169
                    totalSupply -= sub_27d9f169
                    sub_27d9f169 = 0
                    sub_b97ceb3c = block.number
                state = 2
        call ownerAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balanceOf[address(msg.sender)] += msg.value * sub_b9814e7f
        emit 0x6087145e: (msg.value * sub_b9814e7f), msg.sender
}



}
