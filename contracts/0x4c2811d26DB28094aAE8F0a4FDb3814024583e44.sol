contract main {




// =====================  Runtime code  =====================


const sub_3b1dbfcc(?) = 1000

const VERSION = '18.06.04.01'


address stor0;
address stor1;
uint16 sub_20882534; offset 160
address stor2;
array of struct stor3;
array of struct stor4;
array of address options;
uint8 currentState;
address winningOptionAddress; offset 8
uint256 sub_7a6e0880;
array of struct sub_dead7a14;
array of struct distributions;
array of struct sub_85589a81;
uint256 sub_9ad1fdc1;
mapping of uint256 sub_529e9e99;
array of struct sub_c801d107;
uint256 sub_c9ae9ab4;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020069;

function currentState() {
    require currentState <= 6
    return currentState
}

function optionsCount() {
    return options.length
}

function sub_20882534(?) {
    return sub_20882534
}

function options(uint256 arg1) {
    require arg1 < options.length
    return options[arg1]
}

function excluded(address arg1) {
    return bool(stor16[arg1])
}

function distributions(uint256 arg1) {
    require arg1 < distributions.length
    return distributions[arg1].field_0, distributions[arg1].field_256
}

function sub_4ef4660a(?) {
    return sub_c801d107.length
}

function sub_529e9e99(?) {
    return sub_529e9e99[arg1]
}

function sub_5beb4cea(?) {
    return sub_85589a81.length
}

function sub_7a6e0880(?) {
    return sub_7a6e0880
}

function sub_85589a81(?) {
    require arg1 < sub_85589a81.length
    return sub_85589a81[arg1].field_0, sub_85589a81[arg1].field_256
}

function sub_9ad1fdc1(?) {
    return sub_9ad1fdc1
}

function winningOption() {
    return winningOptionAddress
}

function sub_c801d107(?) {
    require arg1 < sub_c801d107.length
    return sub_c801d107[arg1].field_0, sub_c801d107[arg1].field_256
}

function sub_c85a5121(?) {
    return sub_dead7a14.length
}

function sub_c9ae9ab4(?) {
    return sub_c9ae9ab4
}

function sub_daafd1b6(?) {
    return distributions.length
}

function sub_dead7a14(?) {
    require arg1 < sub_dead7a14.length
    return sub_dead7a14[arg1].field_0, sub_dead7a14[arg1].field_256, sub_dead7a14[arg1].field_512
}

function blocked(address arg1) {
    return bool(stor15[arg1])
}

function _fallback() payable {
    revert
}

function closeBet() {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'access denied'
    require currentState <= 6
    if currentState:
        revert with 0, 'closed to bet'
    currentState = 1
}

function panic() {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'access denied'
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aba2df5f(?) {
    idx = 0
    s = 0
    while idx < sub_85589a81.length:
        mem[0] = 10
        if sub_85589a81[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_85589a81.length
        mem[0] = 10
        idx = idx + 1
        s = s + sub_85589a81[idx].field_256
        continue 
    return s
}

function sub_cb4bbddc(?) {
    idx = 0
    s = 0
    while idx < distributions.length:
        mem[0] = 9
        if distributions[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require idx < distributions.length
        mem[0] = 9
        idx = idx + 1
        s = s + distributions[idx].field_256
        continue 
    return s
}

function exclude(address[] arg1) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'access denied'
    require currentState <= 6
    if currentState == 2:
        revert with 0, 'incompatible state'
    require currentState <= 6
    if currentState == 4:
        revert with 0, 'incompatible state'
    require currentState <= 6
    if currentState == 5:
        revert with 0, 'incompatible state'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 16
        stor16[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_9dcc7de8(?) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'access denied'
    require currentState <= 6
    if currentState != 6:
        revert with 0, 'incompatible state'
    options.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while options.length > idx:
            options[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            options[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while options.length > idx:
            options[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < options.length:
        mem[0] = options[idx]
        mem[32] = 17
        stor17[stor5[idx]] = 1
        idx = idx + 1
        continue 
    currentState = 0
}

function sub_469ddc01(?) {
    mem[96] = stor3.length
    mem[128] = uint256(stor3.field_0)
    idx = 128
    s = 0
    while stor3.length + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor3.length) + ceil32(stor4.length) + 160
    mem[ceil32(stor3.length) + 128] = stor4.length
    mem[0] = 4
    mem[ceil32(stor3.length) + 160] = uint256(stor4.field_0)
    idx = ceil32(stor3.length) + 160
    s = 0
    while ceil32(stor3.length) + stor4.length + 128 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 160] = 64
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 224] = stor3.length
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 256 len ceil32(stor3.length)] = mem[128 len ceil32(stor3.length)]
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 192] = stor3.length + 96
    mem[stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + 256] = stor4.length
    mem[stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + 288 len ceil32(stor4.length)] = mem[ceil32(stor3.length) + 160 len ceil32(stor4.length)]
    if not stor4.length % 32:
        return Array(len=stor3.length, data=mem[128 len ceil32(stor3.length)], mem[(2 * ceil32(stor3.length)) + ceil32(stor4.length) + 256 len stor4.length + stor3.length + -ceil32(stor3.length) + 32]), 
               stor3.length + 96
    mem[floor32(stor4.length) + stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + 288] = mem[floor32(stor4.length) + stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + -stor4.length % 32 + 320 len stor4.length % 32]
    return Array(len=stor3.length, data=mem[128 len ceil32(stor3.length)], mem[(2 * ceil32(stor3.length)) + ceil32(stor4.length) + 256 len floor32(stor4.length) + stor3.length + -ceil32(stor3.length) + 64]), 
           stor3.length + 96
}

function placeBet(address arg1) payable {
    require currentState <= 6
    if currentState:
        revert with 0, 'closed to bet'
    if not stor17[msg.sender]:
        revert with 0, 'invalid option'
    if stor15[address(arg1)]:
        revert with 0, 'bet denied'
    if stor16[address(arg1)]:
        revert with 0, 'bet denied'
    sub_9ad1fdc1 += msg.value
    sub_529e9e99[msg.sender] += msg.value
    sub_dead7a14.length++
    sub_dead7a14[sub_dead7a14.length].field_0 = arg1
    storF3F7[stor8.length] = msg.value
    storF3F7[stor8.length] = msg.sender
    require currentState <= 6
    if not currentState:
        if eth.balance(this.address) - sub_9ad1fdc1:
            revert with 0, 'balance check failed'
    else:
        require currentState <= 6
        if currentState == 1:
            if eth.balance(this.address) - sub_9ad1fdc1:
                revert with 0, 'balance check failed'
        else:
            idx = 0
            s = 0
            while idx < sub_85589a81.length:
                mem[0] = 10
                idx = idx + 1
                s = s + sub_85589a81[idx].field_256
                continue 
            if eth.balance(this.address) - (s * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length):
                revert with 0, 'balance check failed'
    return sub_dead7a14.length
}

function cancelGame() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == stor0:
        require currentState <= 6
        if currentState == 2:
            revert with 0, 'incompatible state'
        require currentState <= 6
        if currentState == 4:
            revert with 0, 'incompatible state'
        require currentState <= 6
        if currentState == 5:
            revert with 0, 'incompatible state'
        require currentState <= 6
        if currentState:
            distributions.length = 0
            idx = 0
            while 2 * distributions.length > idx:
                distributions[idx].field_0 = 0
                distributions[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_c801d107.length = 0
            idx = 0
            while 2 * sub_c801d107.length > idx:
                sub_c801d107[idx].field_0 = 0
                sub_c801d107[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_7a6e0880 = 0
            sub_c9ae9ab4 = 0
            idx = 0
            while idx < sub_dead7a14.length:
                _113 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = 8
                mem[_113] = sub_dead7a14[idx].field_0
                mem[_113 + 32] = sub_dead7a14[idx].field_256
                distributions.length++
                mem[0] = 9
                distributions[distributions.length].field_0 = sub_dead7a14[idx].field_0
                distributions[distributions.length].field_256 = sub_dead7a14[idx].field_256
                idx = idx + 1
                continue 
        else:
            currentState = 1
            distributions.length = 0
            idx = 0
            while 2 * distributions.length > idx:
                distributions[idx].field_0 = 0
                distributions[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_c801d107.length = 0
            idx = 0
            while 2 * sub_c801d107.length > idx:
                sub_c801d107[idx].field_0 = 0
                sub_c801d107[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_7a6e0880 = 0
            sub_c9ae9ab4 = 0
            idx = 0
            while idx < sub_dead7a14.length:
                _114 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = 8
                mem[_114] = sub_dead7a14[idx].field_0
                mem[_114 + 32] = sub_dead7a14[idx].field_256
                distributions.length++
                mem[0] = 9
                distributions[distributions.length].field_0 = sub_dead7a14[idx].field_0
                distributions[distributions.length].field_256 = sub_dead7a14[idx].field_256
                idx = idx + 1
                continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'access denied'
        require currentState <= 6
        if currentState == 2:
            revert with 0, 'incompatible state'
        require currentState <= 6
        if currentState == 4:
            revert with 0, 'incompatible state'
        require currentState <= 6
        if currentState == 5:
            revert with 0, 'incompatible state'
        require currentState <= 6
        if currentState:
            distributions.length = 0
            idx = 0
            while 2 * distributions.length > idx:
                distributions[idx].field_0 = 0
                distributions[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_c801d107.length = 0
            idx = 0
            while 2 * sub_c801d107.length > idx:
                sub_c801d107[idx].field_0 = 0
                sub_c801d107[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_7a6e0880 = 0
            sub_c9ae9ab4 = 0
            idx = 0
            while idx < sub_dead7a14.length:
                _115 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = 8
                mem[_115] = sub_dead7a14[idx].field_0
                mem[_115 + 32] = sub_dead7a14[idx].field_256
                distributions.length++
                mem[0] = 9
                distributions[distributions.length].field_0 = sub_dead7a14[idx].field_0
                distributions[distributions.length].field_256 = sub_dead7a14[idx].field_256
                idx = idx + 1
                continue 
        else:
            currentState = 1
            distributions.length = 0
            idx = 0
            while 2 * distributions.length > idx:
                distributions[idx].field_0 = 0
                distributions[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_c801d107.length = 0
            idx = 0
            while 2 * sub_c801d107.length > idx:
                sub_c801d107[idx].field_0 = 0
                sub_c801d107[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_7a6e0880 = 0
            sub_c9ae9ab4 = 0
            idx = 0
            while idx < sub_dead7a14.length:
                _116 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = 8
                mem[_116] = sub_dead7a14[idx].field_0
                mem[_116 + 32] = sub_dead7a14[idx].field_256
                distributions.length++
                mem[0] = 9
                distributions[distributions.length].field_0 = sub_dead7a14[idx].field_0
                distributions[distributions.length].field_256 = sub_dead7a14[idx].field_256
                idx = idx + 1
                continue 
    currentState = 2
}

function withdraw() {
    require currentState <= 6
    if currentState != 5:
        revert with 0, 'incompatible state'
    if uint32(ext_code.size(msg.sender)) > 0:
        revert with 0, 'only human allowed'
    s = 0
    idx = 0
    while idx < sub_85589a81.length:
        mem[0] = 10
        if sub_85589a81[idx].field_0 != msg.sender:
            s = s
            idx = idx + 1
            continue 
        require idx < sub_85589a81.length
        mem[0] = 10
        if sub_85589a81[idx].field_256 <= 0:
            s = s
            idx = idx + 1
            continue 
        require idx < sub_85589a81.length
        mem[0] = 10
        sub_85589a81[idx].field_256 = 0
        call msg.sender with:
           value sub_85589a81[idx].field_256 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            s = sub_85589a81[idx].field_256
            idx = idx + 1
            continue 
        require idx < sub_85589a81.length
        require currentState <= 6
        if not currentState:
            if eth.balance(this.address) - sub_9ad1fdc1:
                revert with 0, 'balance check failed'
        else:
            require currentState <= 6
            if currentState == 1:
                if eth.balance(this.address) - sub_9ad1fdc1:
                    revert with 0, 'balance check failed'
            else:
                idx = 0
                s = 0
                while idx < sub_85589a81.length:
                    mem[0] = 10
                    idx = idx + 1
                    s = s + sub_85589a81[idx].field_256
                    continue 
                if eth.balance(this.address) - (s * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length):
                    revert with 0, 'balance check failed'
    require currentState <= 6
    if not currentState:
        if eth.balance(this.address) - sub_9ad1fdc1:
            revert with 0, 'balance check failed'
    else:
        require currentState <= 6
        if currentState == 1:
            if eth.balance(this.address) - sub_9ad1fdc1:
                revert with 0, 'balance check failed'
        else:
            idx = 0
            s = 0
            while idx < sub_85589a81.length:
                mem[0] = 10
                idx = idx + 1
                s = s + sub_85589a81[idx].field_256
                continue 
            if eth.balance(this.address) - (s * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length):
                revert with 0, 'balance check failed'
}

function distribute() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == stor0:
        require currentState <= 6
        if currentState == 3:
            currentState = 4
            if 0 >= sub_7a6e0880:
                if sub_c9ae9ab4 <= 0:
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _393 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_393] = distributions[idx].field_0
                                mem[_393 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
                else:
                    call stor2 with:
                       value sub_c9ae9ab4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _394 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_394] = distributions[idx].field_0
                                mem[_394 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
            else:
                call stor1 with:
                   value sub_7a6e0880 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_c9ae9ab4 <= 0:
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _395 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_395] = distributions[idx].field_0
                                mem[_395 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
                else:
                    call stor2 with:
                       value sub_c9ae9ab4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _396 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_396] = distributions[idx].field_0
                                mem[_396 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
        else:
            require currentState <= 6
            if currentState != 2:
                revert with 0, 'incompatible state'
            currentState = 4
            if 0 >= sub_7a6e0880:
                if sub_c9ae9ab4 <= 0:
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _397 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_397] = distributions[idx].field_0
                                mem[_397 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
                else:
                    call stor2 with:
                       value sub_c9ae9ab4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _398 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_398] = distributions[idx].field_0
                                mem[_398 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
            else:
                call stor1 with:
                   value sub_7a6e0880 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_c9ae9ab4 <= 0:
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _399 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_399] = distributions[idx].field_0
                                mem[_399 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
                else:
                    call stor2 with:
                       value sub_c9ae9ab4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _400 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_400] = distributions[idx].field_0
                                mem[_400 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'access denied'
        require currentState <= 6
        if currentState == 3:
            currentState = 4
            if 0 >= sub_7a6e0880:
                if sub_c9ae9ab4 <= 0:
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _401 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_401] = distributions[idx].field_0
                                mem[_401 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
                else:
                    call stor2 with:
                       value sub_c9ae9ab4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _402 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_402] = distributions[idx].field_0
                                mem[_402 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
            else:
                call stor1 with:
                   value sub_7a6e0880 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_c9ae9ab4 <= 0:
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _403 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_403] = distributions[idx].field_0
                                mem[_403 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
                else:
                    call stor2 with:
                       value sub_c9ae9ab4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _404 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_404] = distributions[idx].field_0
                                mem[_404 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
        else:
            require currentState <= 6
            if currentState != 2:
                revert with 0, 'incompatible state'
            currentState = 4
            if 0 >= sub_7a6e0880:
                if sub_c9ae9ab4 <= 0:
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _405 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_405] = distributions[idx].field_0
                                mem[_405 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
                else:
                    call stor2 with:
                       value sub_c9ae9ab4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _406 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_406] = distributions[idx].field_0
                                mem[_406 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
            else:
                call stor1 with:
                   value sub_7a6e0880 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_c9ae9ab4 <= 0:
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _407 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_407] = distributions[idx].field_0
                                mem[_407 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
                else:
                    call stor2 with:
                       value sub_c9ae9ab4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < distributions.length:
                        mem[0] = 9
                        if distributions[idx].field_256 > 0:
                            require idx < distributions.length
                            mem[0] = 9
                            call distributions[idx].field_0 with:
                               value distributions[idx].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                _408 = mem[64]
                                mem[64] = mem[64] + 64
                                require idx < distributions.length
                                mem[0] = 9
                                mem[_408] = distributions[idx].field_0
                                mem[_408 + 32] = distributions[idx].field_256
                                sub_85589a81.length++
                                mem[0] = 10
                                sub_85589a81[sub_85589a81.length].field_0 = distributions[idx].field_0
                                sub_85589a81[sub_85589a81.length].field_256 = distributions[idx].field_256
                        idx = idx + 1
                        continue 
    currentState = 5
    require currentState <= 6
    if not currentState:
        if eth.balance(this.address) - sub_9ad1fdc1:
            revert with 0, 'balance check failed'
    else:
        require currentState <= 6
        if currentState == 1:
            if eth.balance(this.address) - sub_9ad1fdc1:
                revert with 0, 'balance check failed'
        else:
            idx = 0
            s = 0
            while idx < sub_85589a81.length:
                mem[0] = 10
                idx = idx + 1
                s = s + sub_85589a81[idx].field_256
                continue 
            if eth.balance(this.address) - (s * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length * sub_85589a81.length):
                revert with 0, 'balance check failed'
}

function sub_b8da1b0c(?) {
    if msg.sender == stor0:
        require currentState <= 6
        if currentState == 1:
            mem[32] = 17
            if not stor17[address(arg1)]:
                revert with 0, 'invalid option'
            sub_c801d107.length = 0
            idx = 0
            while 2 * sub_c801d107.length > idx:
                sub_c801d107[idx].field_0 = 0
                sub_c801d107[idx].field_256 = 0
                idx = idx + 2
                continue 
            distributions.length = 0
            mem[0] = 9
            idx = 0
            while 2 * distributions.length > idx:
                distributions[idx].field_0 = 0
                distributions[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_7a6e0880 = 0
            sub_c9ae9ab4 = 0
            winningOptionAddress = arg1
            mem[64] = (32 * sub_dead7a14.length) + 128
            mem[96] = sub_dead7a14.length
            s = 128
            idx = 0
            while idx < sub_dead7a14.length:
                mem[0] = 8
                _914 = mem[64]
                mem[64] = mem[64] + 96
                mem[_914] = sub_dead7a14[idx].field_0
                mem[_914 + 32] = sub_dead7a14[idx].field_256
                mem[_914 + 64] = sub_dead7a14[idx].field_512
                mem[s] = _914
                s = s + 32
                idx = idx + 1
                continue 
            _1201 = mem[96]
            idx = 0
            while idx < _1201:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 76 len 20] != winningOptionAddress:
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = 0
                _1201 = mem[96]
                idx = idx + 1
                continue 
            _1209 = mem[64]
            mem[64] = mem[64] + (32 * sub_dead7a14.length) + 32
            mem[_1209] = sub_dead7a14.length
            s = _1209 + 32
            idx = 0
            while idx < sub_dead7a14.length:
                mem[0] = 8
                _1482 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1482] = sub_dead7a14[idx].field_0
                mem[_1482 + 32] = sub_dead7a14[idx].field_256
                mem[_1482 + 64] = sub_dead7a14[idx].field_512
                mem[s] = _1482
                s = s + 32
                idx = idx + 1
                continue 
            _1733 = mem[_1209]
            s = 0
            t = 0
            idx = 0
            while idx < _1733:
                require idx < mem[_1209]
                if mem[mem[(32 * idx) + _1209 + 32] + 32] <= 0:
                    _1733 = mem[_1209]
                    s = s
                    t = t
                    idx = idx + 1
                    continue 
                require idx < mem[_1209]
                _1754 = mem[mem[(32 * idx) + _1209 + 32] + 32]
                require 1000 * sub_9ad1fdc1
                require idx < mem[_1209]
                mem[0] = mem[mem[_1209 + (32 * idx) + 32] + 12 len 20]
                mem[32] = 16
                if not stor16[mem[0]]:
                    _1777 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1209]
                    mem[_1777] = mem[mem[(32 * idx) + _1209 + 32] + 12 len 20]
                    mem[_1777 + 32] = sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    distributions.length++
                    mem[0] = 9
                    distributions[distributions.length].field_0 = mem[_1777 + 12 len 20]
                    distributions[distributions.length].field_256 = sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    _1733 = mem[_1209]
                    s = sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    t = (sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) + t
                    idx = idx + 1
                    continue 
                require idx < mem[_1209]
                if sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1 <= mem[mem[(32 * idx) + _1209 + 32] + 32]:
                    _1817 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1209]
                    mem[_1817] = mem[mem[(32 * idx) + _1209 + 32] + 12 len 20]
                    mem[_1817 + 32] = 0
                    sub_c801d107.length++
                    mem[0] = 13
                    sub_c801d107[sub_c801d107.length].field_0 = mem[_1817 + 12 len 20]
                    sub_c801d107[sub_c801d107.length].field_256 = 0
                    _1838 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1209]
                    mem[_1838] = mem[mem[(32 * idx) + _1209 + 32] + 12 len 20]
                    mem[_1838 + 32] = sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    distributions.length++
                    mem[0] = 9
                    distributions[distributions.length].field_0 = mem[_1838 + 12 len 20]
                    distributions[distributions.length].field_256 = sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    _1733 = mem[_1209]
                    s = sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    t = (sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) + t
                    idx = idx + 1
                    continue 
                _1819 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_1209]
                mem[_1819] = mem[mem[(32 * idx) + _1209 + 32] + 12 len 20]
                require idx < mem[_1209]
                mem[_1819 + 32] = (sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) - mem[mem[(32 * idx) + _1209 + 32] + 32]
                sub_c801d107.length++
                mem[0] = 13
                sub_c801d107[sub_c801d107.length].field_0 = mem[_1819 + 12 len 20]
                sub_c801d107[sub_c801d107.length].field_256 = mem[_1819 + 32]
                _1883 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_1209]
                mem[_1883] = mem[mem[(32 * idx) + _1209 + 32] + 12 len 20]
                require idx < mem[_1209]
                mem[_1883 + 32] = mem[mem[(32 * idx) + _1209 + 32] + 32]
                distributions.length++
                mem[0] = 9
                distributions[distributions.length].field_0 = mem[_1883 + 12 len 20]
                distributions[distributions.length].field_256 = mem[_1883 + 32]
                require idx < mem[_1209]
                require idx < mem[_1209]
                sub_c9ae9ab4 = (sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) - mem[mem[_1209 + (32 * idx) + 32] + 32] + sub_c9ae9ab4
                _1733 = mem[_1209]
                s = sub_9ad1fdc1 * _1754 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                t = t + mem[mem[(32 * idx) + _1209 + 32] + 32]
                idx = idx + 1
                continue 
        else:
            require currentState <= 6
            if currentState != 3:
                revert with 0, 'incompatible state'
            mem[32] = 17
            if not stor17[address(arg1)]:
                revert with 0, 'invalid option'
            sub_c801d107.length = 0
            idx = 0
            while 2 * sub_c801d107.length > idx:
                sub_c801d107[idx].field_0 = 0
                sub_c801d107[idx].field_256 = 0
                idx = idx + 2
                continue 
            distributions.length = 0
            mem[0] = 9
            idx = 0
            while 2 * distributions.length > idx:
                distributions[idx].field_0 = 0
                distributions[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_7a6e0880 = 0
            sub_c9ae9ab4 = 0
            winningOptionAddress = arg1
            mem[64] = (32 * sub_dead7a14.length) + 128
            mem[96] = sub_dead7a14.length
            s = 128
            idx = 0
            while idx < sub_dead7a14.length:
                mem[0] = 8
                _916 = mem[64]
                mem[64] = mem[64] + 96
                mem[_916] = sub_dead7a14[idx].field_0
                mem[_916 + 32] = sub_dead7a14[idx].field_256
                mem[_916 + 64] = sub_dead7a14[idx].field_512
                mem[s] = _916
                s = s + 32
                idx = idx + 1
                continue 
            _1202 = mem[96]
            idx = 0
            while idx < _1202:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 76 len 20] != winningOptionAddress:
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = 0
                _1202 = mem[96]
                idx = idx + 1
                continue 
            _1212 = mem[64]
            mem[64] = mem[64] + (32 * sub_dead7a14.length) + 32
            mem[_1212] = sub_dead7a14.length
            s = _1212 + 32
            idx = 0
            while idx < sub_dead7a14.length:
                mem[0] = 8
                _1484 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1484] = sub_dead7a14[idx].field_0
                mem[_1484 + 32] = sub_dead7a14[idx].field_256
                mem[_1484 + 64] = sub_dead7a14[idx].field_512
                mem[s] = _1484
                s = s + 32
                idx = idx + 1
                continue 
            _1734 = mem[_1212]
            s = 0
            t = 0
            idx = 0
            while idx < _1734:
                require idx < mem[_1212]
                if mem[mem[(32 * idx) + _1212 + 32] + 32] <= 0:
                    _1734 = mem[_1212]
                    s = s
                    t = t
                    idx = idx + 1
                    continue 
                require idx < mem[_1212]
                _1756 = mem[mem[(32 * idx) + _1212 + 32] + 32]
                require 1000 * sub_9ad1fdc1
                require idx < mem[_1212]
                mem[0] = mem[mem[_1212 + (32 * idx) + 32] + 12 len 20]
                mem[32] = 16
                if not stor16[mem[0]]:
                    _1780 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1212]
                    mem[_1780] = mem[mem[(32 * idx) + _1212 + 32] + 12 len 20]
                    mem[_1780 + 32] = sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    distributions.length++
                    mem[0] = 9
                    distributions[distributions.length].field_0 = mem[_1780 + 12 len 20]
                    distributions[distributions.length].field_256 = sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    _1734 = mem[_1212]
                    s = sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    t = (sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) + t
                    idx = idx + 1
                    continue 
                require idx < mem[_1212]
                if sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1 <= mem[mem[(32 * idx) + _1212 + 32] + 32]:
                    _1821 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1212]
                    mem[_1821] = mem[mem[(32 * idx) + _1212 + 32] + 12 len 20]
                    mem[_1821 + 32] = 0
                    sub_c801d107.length++
                    mem[0] = 13
                    sub_c801d107[sub_c801d107.length].field_0 = mem[_1821 + 12 len 20]
                    sub_c801d107[sub_c801d107.length].field_256 = 0
                    _1848 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1212]
                    mem[_1848] = mem[mem[(32 * idx) + _1212 + 32] + 12 len 20]
                    mem[_1848 + 32] = sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    distributions.length++
                    mem[0] = 9
                    distributions[distributions.length].field_0 = mem[_1848 + 12 len 20]
                    distributions[distributions.length].field_256 = sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    _1734 = mem[_1212]
                    s = sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    t = (sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) + t
                    idx = idx + 1
                    continue 
                _1823 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_1212]
                mem[_1823] = mem[mem[(32 * idx) + _1212 + 32] + 12 len 20]
                require idx < mem[_1212]
                mem[_1823 + 32] = (sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) - mem[mem[(32 * idx) + _1212 + 32] + 32]
                sub_c801d107.length++
                mem[0] = 13
                sub_c801d107[sub_c801d107.length].field_0 = mem[_1823 + 12 len 20]
                sub_c801d107[sub_c801d107.length].field_256 = mem[_1823 + 32]
                _1895 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_1212]
                mem[_1895] = mem[mem[(32 * idx) + _1212 + 32] + 12 len 20]
                require idx < mem[_1212]
                mem[_1895 + 32] = mem[mem[(32 * idx) + _1212 + 32] + 32]
                distributions.length++
                mem[0] = 9
                distributions[distributions.length].field_0 = mem[_1895 + 12 len 20]
                distributions[distributions.length].field_256 = mem[_1895 + 32]
                require idx < mem[_1212]
                require idx < mem[_1212]
                sub_c9ae9ab4 = (sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) - mem[mem[_1212 + (32 * idx) + 32] + 32] + sub_c9ae9ab4
                _1734 = mem[_1212]
                s = sub_9ad1fdc1 * _1756 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                t = t + mem[mem[(32 * idx) + _1212 + 32] + 32]
                idx = idx + 1
                continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'access denied'
        require currentState <= 6
        if currentState == 1:
            mem[32] = 17
            if not stor17[address(arg1)]:
                revert with 0, 'invalid option'
            sub_c801d107.length = 0
            idx = 0
            while 2 * sub_c801d107.length > idx:
                sub_c801d107[idx].field_0 = 0
                sub_c801d107[idx].field_256 = 0
                idx = idx + 2
                continue 
            distributions.length = 0
            mem[0] = 9
            idx = 0
            while 2 * distributions.length > idx:
                distributions[idx].field_0 = 0
                distributions[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_7a6e0880 = 0
            sub_c9ae9ab4 = 0
            winningOptionAddress = arg1
            mem[64] = (32 * sub_dead7a14.length) + 128
            mem[96] = sub_dead7a14.length
            s = 128
            idx = 0
            while idx < sub_dead7a14.length:
                mem[0] = 8
                _918 = mem[64]
                mem[64] = mem[64] + 96
                mem[_918] = sub_dead7a14[idx].field_0
                mem[_918 + 32] = sub_dead7a14[idx].field_256
                mem[_918 + 64] = sub_dead7a14[idx].field_512
                mem[s] = _918
                s = s + 32
                idx = idx + 1
                continue 
            _1203 = mem[96]
            idx = 0
            while idx < _1203:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 76 len 20] != winningOptionAddress:
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = 0
                _1203 = mem[96]
                idx = idx + 1
                continue 
            _1215 = mem[64]
            mem[64] = mem[64] + (32 * sub_dead7a14.length) + 32
            mem[_1215] = sub_dead7a14.length
            s = _1215 + 32
            idx = 0
            while idx < sub_dead7a14.length:
                mem[0] = 8
                _1486 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1486] = sub_dead7a14[idx].field_0
                mem[_1486 + 32] = sub_dead7a14[idx].field_256
                mem[_1486 + 64] = sub_dead7a14[idx].field_512
                mem[s] = _1486
                s = s + 32
                idx = idx + 1
                continue 
            _1735 = mem[_1215]
            s = 0
            t = 0
            idx = 0
            while idx < _1735:
                require idx < mem[_1215]
                if mem[mem[(32 * idx) + _1215 + 32] + 32] <= 0:
                    _1735 = mem[_1215]
                    s = s
                    t = t
                    idx = idx + 1
                    continue 
                require idx < mem[_1215]
                _1758 = mem[mem[(32 * idx) + _1215 + 32] + 32]
                require 1000 * sub_9ad1fdc1
                require idx < mem[_1215]
                mem[0] = mem[mem[_1215 + (32 * idx) + 32] + 12 len 20]
                mem[32] = 16
                if not stor16[mem[0]]:
                    _1783 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1215]
                    mem[_1783] = mem[mem[(32 * idx) + _1215 + 32] + 12 len 20]
                    mem[_1783 + 32] = sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    distributions.length++
                    mem[0] = 9
                    distributions[distributions.length].field_0 = mem[_1783 + 12 len 20]
                    distributions[distributions.length].field_256 = sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    _1735 = mem[_1215]
                    s = sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    t = (sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) + t
                    idx = idx + 1
                    continue 
                require idx < mem[_1215]
                if sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1 <= mem[mem[(32 * idx) + _1215 + 32] + 32]:
                    _1825 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1215]
                    mem[_1825] = mem[mem[(32 * idx) + _1215 + 32] + 12 len 20]
                    mem[_1825 + 32] = 0
                    sub_c801d107.length++
                    mem[0] = 13
                    sub_c801d107[sub_c801d107.length].field_0 = mem[_1825 + 12 len 20]
                    sub_c801d107[sub_c801d107.length].field_256 = 0
                    _1858 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1215]
                    mem[_1858] = mem[mem[(32 * idx) + _1215 + 32] + 12 len 20]
                    mem[_1858 + 32] = sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    distributions.length++
                    mem[0] = 9
                    distributions[distributions.length].field_0 = mem[_1858 + 12 len 20]
                    distributions[distributions.length].field_256 = sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    _1735 = mem[_1215]
                    s = sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    t = (sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) + t
                    idx = idx + 1
                    continue 
                _1827 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_1215]
                mem[_1827] = mem[mem[(32 * idx) + _1215 + 32] + 12 len 20]
                require idx < mem[_1215]
                mem[_1827 + 32] = (sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) - mem[mem[(32 * idx) + _1215 + 32] + 32]
                sub_c801d107.length++
                mem[0] = 13
                sub_c801d107[sub_c801d107.length].field_0 = mem[_1827 + 12 len 20]
                sub_c801d107[sub_c801d107.length].field_256 = mem[_1827 + 32]
                _1907 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_1215]
                mem[_1907] = mem[mem[(32 * idx) + _1215 + 32] + 12 len 20]
                require idx < mem[_1215]
                mem[_1907 + 32] = mem[mem[(32 * idx) + _1215 + 32] + 32]
                distributions.length++
                mem[0] = 9
                distributions[distributions.length].field_0 = mem[_1907 + 12 len 20]
                distributions[distributions.length].field_256 = mem[_1907 + 32]
                require idx < mem[_1215]
                require idx < mem[_1215]
                sub_c9ae9ab4 = (sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) - mem[mem[_1215 + (32 * idx) + 32] + 32] + sub_c9ae9ab4
                _1735 = mem[_1215]
                s = sub_9ad1fdc1 * _1758 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                t = t + mem[mem[(32 * idx) + _1215 + 32] + 32]
                idx = idx + 1
                continue 
        else:
            require currentState <= 6
            if currentState != 3:
                revert with 0, 'incompatible state'
            mem[32] = 17
            if not stor17[address(arg1)]:
                revert with 0, 'invalid option'
            sub_c801d107.length = 0
            idx = 0
            while 2 * sub_c801d107.length > idx:
                sub_c801d107[idx].field_0 = 0
                sub_c801d107[idx].field_256 = 0
                idx = idx + 2
                continue 
            distributions.length = 0
            mem[0] = 9
            idx = 0
            while 2 * distributions.length > idx:
                distributions[idx].field_0 = 0
                distributions[idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_7a6e0880 = 0
            sub_c9ae9ab4 = 0
            winningOptionAddress = arg1
            mem[64] = (32 * sub_dead7a14.length) + 128
            mem[96] = sub_dead7a14.length
            s = 128
            idx = 0
            while idx < sub_dead7a14.length:
                mem[0] = 8
                _920 = mem[64]
                mem[64] = mem[64] + 96
                mem[_920] = sub_dead7a14[idx].field_0
                mem[_920 + 32] = sub_dead7a14[idx].field_256
                mem[_920 + 64] = sub_dead7a14[idx].field_512
                mem[s] = _920
                s = s + 32
                idx = idx + 1
                continue 
            _1204 = mem[96]
            idx = 0
            while idx < _1204:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 76 len 20] != winningOptionAddress:
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = 0
                _1204 = mem[96]
                idx = idx + 1
                continue 
            _1218 = mem[64]
            mem[64] = mem[64] + (32 * sub_dead7a14.length) + 32
            mem[_1218] = sub_dead7a14.length
            s = _1218 + 32
            idx = 0
            while idx < sub_dead7a14.length:
                mem[0] = 8
                _1488 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1488] = sub_dead7a14[idx].field_0
                mem[_1488 + 32] = sub_dead7a14[idx].field_256
                mem[_1488 + 64] = sub_dead7a14[idx].field_512
                mem[s] = _1488
                s = s + 32
                idx = idx + 1
                continue 
            _1736 = mem[_1218]
            s = 0
            t = 0
            idx = 0
            while idx < _1736:
                require idx < mem[_1218]
                if mem[mem[(32 * idx) + _1218 + 32] + 32] <= 0:
                    _1736 = mem[_1218]
                    s = s
                    t = t
                    idx = idx + 1
                    continue 
                require idx < mem[_1218]
                _1760 = mem[mem[(32 * idx) + _1218 + 32] + 32]
                require 1000 * sub_9ad1fdc1
                require idx < mem[_1218]
                mem[0] = mem[mem[_1218 + (32 * idx) + 32] + 12 len 20]
                mem[32] = 16
                if not stor16[mem[0]]:
                    _1786 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1218]
                    mem[_1786] = mem[mem[(32 * idx) + _1218 + 32] + 12 len 20]
                    mem[_1786 + 32] = sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    distributions.length++
                    mem[0] = 9
                    distributions[distributions.length].field_0 = mem[_1786 + 12 len 20]
                    distributions[distributions.length].field_256 = sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    _1736 = mem[_1218]
                    s = sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    t = (sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) + t
                    idx = idx + 1
                    continue 
                require idx < mem[_1218]
                if sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1 <= mem[mem[(32 * idx) + _1218 + 32] + 32]:
                    _1829 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1218]
                    mem[_1829] = mem[mem[(32 * idx) + _1218 + 32] + 12 len 20]
                    mem[_1829 + 32] = 0
                    sub_c801d107.length++
                    mem[0] = 13
                    sub_c801d107[sub_c801d107.length].field_0 = mem[_1829 + 12 len 20]
                    sub_c801d107[sub_c801d107.length].field_256 = 0
                    _1868 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[_1218]
                    mem[_1868] = mem[mem[(32 * idx) + _1218 + 32] + 12 len 20]
                    mem[_1868 + 32] = sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    distributions.length++
                    mem[0] = 9
                    distributions[distributions.length].field_0 = mem[_1868 + 12 len 20]
                    distributions[distributions.length].field_256 = sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    _1736 = mem[_1218]
                    s = sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                    t = (sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) + t
                    idx = idx + 1
                    continue 
                _1831 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_1218]
                mem[_1831] = mem[mem[(32 * idx) + _1218 + 32] + 12 len 20]
                require idx < mem[_1218]
                mem[_1831 + 32] = (sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) - mem[mem[(32 * idx) + _1218 + 32] + 32]
                sub_c801d107.length++
                mem[0] = 13
                sub_c801d107[sub_c801d107.length].field_0 = mem[_1831 + 12 len 20]
                sub_c801d107[sub_c801d107.length].field_256 = mem[_1831 + 32]
                _1919 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_1218]
                mem[_1919] = mem[mem[(32 * idx) + _1218 + 32] + 12 len 20]
                require idx < mem[_1218]
                mem[_1919 + 32] = mem[mem[(32 * idx) + _1218 + 32] + 32]
                distributions.length++
                mem[0] = 9
                distributions[distributions.length].field_0 = mem[_1919 + 12 len 20]
                distributions[distributions.length].field_256 = mem[_1919 + 32]
                require idx < mem[_1218]
                require idx < mem[_1218]
                sub_c9ae9ab4 = (sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1) - mem[mem[_1218 + (32 * idx) + 32] + 32] + sub_c9ae9ab4
                _1736 = mem[_1218]
                s = sub_9ad1fdc1 * _1760 * uint16(-sub_20882534 + 1000) / 1000 * sub_9ad1fdc1
                t = t + mem[mem[(32 * idx) + _1218 + 32] + 32]
                idx = idx + 1
                continue 
    sub_7a6e0880 = sub_9ad1fdc1 - t - sub_c9ae9ab4
    currentState = 3
}



}
