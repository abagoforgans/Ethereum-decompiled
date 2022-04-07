contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor10;
uint8 stor11;
uint256 stor12;
uint256 stor13;
address stor14;
address stor15;
address stor16;
address stor17;

function _fallback() payable {
    stor9 = 0
    stor10 = 20000000 * 10^18
    stor11 = 0
    stor12 = 1488 * 24 * 3600
    stor13 = 17520 * 24 * 3600
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    require not msg.value
    mem[96 len -5307] = code.data[6013 len -5307]
    mem[64] = -5211
    stor3 = msg.sender
    mem[0] = 4
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5.length = (2 * mem[mem[192] + 96]) + 1
    s = 0
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor5[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor5.length + 31 / 32 > Mask(251, 0, mem[mem[192] + 96] + 31) >> 5:
        stor5[Mask(251, 0, mem[mem[192] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 1
        while stor5.length + 31 / 32 > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor6 = mem[255 len 1]
    stor7 = mem[320]
    stor8 = mem[352]
    stor0[address(msg.sender)] = (10^18 * mem[96]) - (10^18 * mem[128])
    stor0[mem[300 len 20]] = 10^18 * mem[128]
    stor14 = mem[300 len 20]
    stor2 = (10^18 * mem[128]) + stor10
    stor3 = mem[268 len 20]
    return code.data[706 len 5307]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 startTime;
uint256 endTime;
uint8 sub_65ac3d0d;
uint256 sub_453200f6;
uint8 halted;
uint256 freeze;
uint256 sub_883b6468;
address stor14;
address stor15;
address stor16;
address stor17;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function sub_453200f6(?) {
    return sub_453200f6
}

function freeze() {
    return freeze
}

function sub_65ac3d0d(?) {
    return bool(sub_65ac3d0d)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_883b6468(?) {
    return sub_883b6468
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function halted() {
    return bool(halted)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function halt() {
    require owner == msg.sender
    halted = 1
}

function unhalt() {
    require owner == msg.sender
    halted = 0
}

function sub_d724dea6(?) {
    require owner == msg.sender
    stor17 = arg1
    return 1
}

function sub_33d46dd4(?) {
    if stor15 != msg.sender:
        if owner != msg.sender:
            return 0
    stor15 = arg1
    return 1
}

function sub_bf8b4477(?) {
    if stor16 != msg.sender:
        if owner != msg.sender:
            return 0
    stor16 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_1de7463a(?) {
    if arg1 < 416098 * 3600:
        return 850
    if arg1 < 416099 * 3600:
        return 750
    if arg1 < 416266 * 3600:
        return 650
    if arg1 < 416434 * 3600:
        return 600
    if arg1 < 416602 * 3600:
        return 550
    if arg1 <= 416602 * 3600:
        return 0
    return 500
}

function burn() {
    require owner == msg.sender
    require sub_453200f6 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - sub_453200f6 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = sub_453200f6
    emit Burn((balanceOf[address(msg.sender)] - sub_453200f6), msg.sender);
    return 1
}

function transferBounty(address arg1, uint256 arg2) {
    if stor14 != msg.sender:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_1007c761(?) {
    require owner == msg.sender
    if block.timestamp <= endTime + sub_883b6468:
        return 0
    if sub_65ac3d0d:
        return 0
    require sub_453200f6 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= sub_453200f6
    require sub_453200f6 + balanceOf[arg1] >= balanceOf[arg1]
    require sub_453200f6 + balanceOf[arg1] >= sub_453200f6
    balanceOf[address(arg1)] = sub_453200f6 + balanceOf[arg1]
    sub_65ac3d0d = 1
    emit AllocateFounderTokens(sub_453200f6, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= endTime + freeze:
        if owner != msg.sender:
            return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor17 != msg.sender:
        if block.timestamp <= endTime + freeze:
            if owner != msg.sender:
                return 0
    else:
        require arg3 + totalSupply >= totalSupply
        require arg3 + totalSupply >= arg3
        totalSupply += arg3
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require owner == msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    if not arg3.length:
        if not arg3.length % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len floor32(arg3.length) + 32]
    else:
        mem[ceil32(arg3.length) + 228] = mem[128]
        mem[ceil32(arg3.length) + 260 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2, address(this.address), mem[128], mem[ceil32(arg3.length) + 260 len floor32(arg3.length)]
    require ext_call.success
    return 1
}

function _fallback() payable {
    require not halted
    require block.timestamp <= endTime
    if block.timestamp < 416098 * 3600:
        require sub_453200f6 + (850 * msg.value) >= 850 * msg.value
        require sub_453200f6 + (850 * msg.value) >= sub_453200f6
        require balanceOf[stor3] >= sub_453200f6 + (850 * msg.value)
        if not stor15:
            if not stor16:
                require 0 <= msg.value
                call owner with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
            else:
                require msg.value / 200 >= 0
                require msg.value / 200 >= msg.value / 200
                call stor16 with:
                   value msg.value / 200 wei
                     gas gas_remaining - 34050 wei
                require ext_call.success
                require msg.value / 200 <= msg.value
                call owner with:
                   value msg.value - (msg.value / 200) wei
                     gas gas_remaining - 34050 wei
        else:
            require msg.value / 200 >= 0
            require msg.value / 200 >= msg.value / 200
            call stor15 with:
               value msg.value / 200 wei
                 gas gas_remaining - 34050 wei
            require ext_call.success
            if not stor16:
                require msg.value / 200 <= msg.value
                call owner with:
                   value msg.value - (msg.value / 200) wei
                     gas gas_remaining - 34050 wei
            else:
                require 2 * msg.value / 200 >= msg.value / 200
                call stor16 with:
                   value msg.value / 200 wei
                     gas gas_remaining - 34050 wei
                require ext_call.success
                require 2 * msg.value / 200 <= msg.value
                call owner with:
                   value msg.value - (2 * msg.value / 200) wei
                     gas gas_remaining - 34050 wei
        require ext_call.success
        require 850 * msg.value <= balanceOf[stor3]
        balanceOf[stor3] += -850 * msg.value
        require (850 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        require (850 * msg.value) + balanceOf[msg.sender] >= 850 * msg.value
        balanceOf[address(msg.sender)] = (850 * msg.value) + balanceOf[msg.sender]
        require (850 * msg.value) + totalSupply >= totalSupply
        require (850 * msg.value) + totalSupply >= 850 * msg.value
        totalSupply += 850 * msg.value
        emit 0x4dd8d32b: msg.value / 10^18, 850 * msg.value / 10^18, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    else:
        if block.timestamp < 416099 * 3600:
            require sub_453200f6 + (750 * msg.value) >= 750 * msg.value
            require sub_453200f6 + (750 * msg.value) >= sub_453200f6
            require balanceOf[stor3] >= sub_453200f6 + (750 * msg.value)
            if not stor15:
                if not stor16:
                    require 0 <= msg.value
                    call owner with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                else:
                    require msg.value / 200 >= 0
                    require msg.value / 200 >= msg.value / 200
                    call stor16 with:
                       value msg.value / 200 wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    require msg.value / 200 <= msg.value
                    call owner with:
                       value msg.value - (msg.value / 200) wei
                         gas gas_remaining - 34050 wei
            else:
                require msg.value / 200 >= 0
                require msg.value / 200 >= msg.value / 200
                call stor15 with:
                   value msg.value / 200 wei
                     gas gas_remaining - 34050 wei
                require ext_call.success
                if not stor16:
                    require msg.value / 200 <= msg.value
                    call owner with:
                       value msg.value - (msg.value / 200) wei
                         gas gas_remaining - 34050 wei
                else:
                    require 2 * msg.value / 200 >= msg.value / 200
                    call stor16 with:
                       value msg.value / 200 wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    require 2 * msg.value / 200 <= msg.value
                    call owner with:
                       value msg.value - (2 * msg.value / 200) wei
                         gas gas_remaining - 34050 wei
            require ext_call.success
            require 750 * msg.value <= balanceOf[stor3]
            balanceOf[stor3] += -750 * msg.value
            require (750 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            require (750 * msg.value) + balanceOf[msg.sender] >= 750 * msg.value
            balanceOf[address(msg.sender)] = (750 * msg.value) + balanceOf[msg.sender]
            require (750 * msg.value) + totalSupply >= totalSupply
            require (750 * msg.value) + totalSupply >= 750 * msg.value
            totalSupply += 750 * msg.value
            emit 0x4dd8d32b: msg.value / 10^18, 750 * msg.value / 10^18, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
        else:
            if block.timestamp < 416266 * 3600:
                require sub_453200f6 + (650 * msg.value) >= 650 * msg.value
                require sub_453200f6 + (650 * msg.value) >= sub_453200f6
                require balanceOf[stor3] >= sub_453200f6 + (650 * msg.value)
                if not stor15:
                    if not stor16:
                        require 0 <= msg.value
                        call owner with:
                           value msg.value wei
                             gas gas_remaining - 34050 wei
                    else:
                        require msg.value / 200 >= 0
                        require msg.value / 200 >= msg.value / 200
                        call stor16 with:
                           value msg.value / 200 wei
                             gas gas_remaining - 34050 wei
                        require ext_call.success
                        require msg.value / 200 <= msg.value
                        call owner with:
                           value msg.value - (msg.value / 200) wei
                             gas gas_remaining - 34050 wei
                else:
                    require msg.value / 200 >= 0
                    require msg.value / 200 >= msg.value / 200
                    call stor15 with:
                       value msg.value / 200 wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    if not stor16:
                        require msg.value / 200 <= msg.value
                        call owner with:
                           value msg.value - (msg.value / 200) wei
                             gas gas_remaining - 34050 wei
                    else:
                        require 2 * msg.value / 200 >= msg.value / 200
                        call stor16 with:
                           value msg.value / 200 wei
                             gas gas_remaining - 34050 wei
                        require ext_call.success
                        require 2 * msg.value / 200 <= msg.value
                        call owner with:
                           value msg.value - (2 * msg.value / 200) wei
                             gas gas_remaining - 34050 wei
                require ext_call.success
                require 650 * msg.value <= balanceOf[stor3]
                balanceOf[stor3] += -650 * msg.value
                require (650 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                require (650 * msg.value) + balanceOf[msg.sender] >= 650 * msg.value
                balanceOf[address(msg.sender)] = (650 * msg.value) + balanceOf[msg.sender]
                require (650 * msg.value) + totalSupply >= totalSupply
                require (650 * msg.value) + totalSupply >= 650 * msg.value
                totalSupply += 650 * msg.value
                emit 0x4dd8d32b: msg.value / 10^18, 650 * msg.value / 10^18, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
            else:
                if block.timestamp < 416434 * 3600:
                    require sub_453200f6 + (600 * msg.value) >= 600 * msg.value
                    require sub_453200f6 + (600 * msg.value) >= sub_453200f6
                    require balanceOf[stor3] >= sub_453200f6 + (600 * msg.value)
                    if not stor15:
                        if not stor16:
                            require 0 <= msg.value
                            call owner with:
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                        else:
                            require msg.value / 200 >= 0
                            require msg.value / 200 >= msg.value / 200
                            call stor16 with:
                               value msg.value / 200 wei
                                 gas gas_remaining - 34050 wei
                            require ext_call.success
                            require msg.value / 200 <= msg.value
                            call owner with:
                               value msg.value - (msg.value / 200) wei
                                 gas gas_remaining - 34050 wei
                    else:
                        require msg.value / 200 >= 0
                        require msg.value / 200 >= msg.value / 200
                        call stor15 with:
                           value msg.value / 200 wei
                             gas gas_remaining - 34050 wei
                        require ext_call.success
                        if not stor16:
                            require msg.value / 200 <= msg.value
                            call owner with:
                               value msg.value - (msg.value / 200) wei
                                 gas gas_remaining - 34050 wei
                        else:
                            require 2 * msg.value / 200 >= msg.value / 200
                            call stor16 with:
                               value msg.value / 200 wei
                                 gas gas_remaining - 34050 wei
                            require ext_call.success
                            require 2 * msg.value / 200 <= msg.value
                            call owner with:
                               value msg.value - (2 * msg.value / 200) wei
                                 gas gas_remaining - 34050 wei
                    require ext_call.success
                    require 600 * msg.value <= balanceOf[stor3]
                    balanceOf[stor3] += -600 * msg.value
                    require (600 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    require (600 * msg.value) + balanceOf[msg.sender] >= 600 * msg.value
                    balanceOf[address(msg.sender)] = (600 * msg.value) + balanceOf[msg.sender]
                    require (600 * msg.value) + totalSupply >= totalSupply
                    require (600 * msg.value) + totalSupply >= 600 * msg.value
                    totalSupply += 600 * msg.value
                    emit 0x4dd8d32b: msg.value / 10^18, 600 * msg.value / 10^18, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
                else:
                    if block.timestamp < 416602 * 3600:
                        require sub_453200f6 + (550 * msg.value) >= 550 * msg.value
                        require sub_453200f6 + (550 * msg.value) >= sub_453200f6
                        require balanceOf[stor3] >= sub_453200f6 + (550 * msg.value)
                        if not stor15:
                            if not stor16:
                                require 0 <= msg.value
                                call owner with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                            else:
                                require msg.value / 200 >= 0
                                require msg.value / 200 >= msg.value / 200
                                call stor16 with:
                                   value msg.value / 200 wei
                                     gas gas_remaining - 34050 wei
                                require ext_call.success
                                require msg.value / 200 <= msg.value
                                call owner with:
                                   value msg.value - (msg.value / 200) wei
                                     gas gas_remaining - 34050 wei
                        else:
                            require msg.value / 200 >= 0
                            require msg.value / 200 >= msg.value / 200
                            call stor15 with:
                               value msg.value / 200 wei
                                 gas gas_remaining - 34050 wei
                            require ext_call.success
                            if not stor16:
                                require msg.value / 200 <= msg.value
                                call owner with:
                                   value msg.value - (msg.value / 200) wei
                                     gas gas_remaining - 34050 wei
                            else:
                                require 2 * msg.value / 200 >= msg.value / 200
                                call stor16 with:
                                   value msg.value / 200 wei
                                     gas gas_remaining - 34050 wei
                                require ext_call.success
                                require 2 * msg.value / 200 <= msg.value
                                call owner with:
                                   value msg.value - (2 * msg.value / 200) wei
                                     gas gas_remaining - 34050 wei
                        require ext_call.success
                        require 550 * msg.value <= balanceOf[stor3]
                        balanceOf[stor3] += -550 * msg.value
                        require (550 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        require (550 * msg.value) + balanceOf[msg.sender] >= 550 * msg.value
                        balanceOf[address(msg.sender)] = (550 * msg.value) + balanceOf[msg.sender]
                        require (550 * msg.value) + totalSupply >= totalSupply
                        require (550 * msg.value) + totalSupply >= 550 * msg.value
                        totalSupply += 550 * msg.value
                        emit 0x4dd8d32b: msg.value / 10^18, 550 * msg.value / 10^18, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
                    else:
                        if block.timestamp <= 416602 * 3600:
                            require sub_453200f6 >= 0
                            require sub_453200f6 >= sub_453200f6
                            require balanceOf[stor3] >= sub_453200f6
                            if not stor15:
                                if not stor16:
                                    require 0 <= msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                else:
                                    require msg.value / 200 >= 0
                                    require msg.value / 200 >= msg.value / 200
                                    call stor16 with:
                                       value msg.value / 200 wei
                                         gas gas_remaining - 34050 wei
                                    require ext_call.success
                                    require msg.value / 200 <= msg.value
                                    call owner with:
                                       value msg.value - (msg.value / 200) wei
                                         gas gas_remaining - 34050 wei
                            else:
                                require msg.value / 200 >= 0
                                require msg.value / 200 >= msg.value / 200
                                call stor15 with:
                                   value msg.value / 200 wei
                                     gas gas_remaining - 34050 wei
                                require ext_call.success
                                if not stor16:
                                    require msg.value / 200 <= msg.value
                                    call owner with:
                                       value msg.value - (msg.value / 200) wei
                                         gas gas_remaining - 34050 wei
                                else:
                                    require 2 * msg.value / 200 >= msg.value / 200
                                    call stor16 with:
                                       value msg.value / 200 wei
                                         gas gas_remaining - 34050 wei
                                    require ext_call.success
                                    require 2 * msg.value / 200 <= msg.value
                                    call owner with:
                                       value msg.value - (2 * msg.value / 200) wei
                                         gas gas_remaining - 34050 wei
                            require ext_call.success
                            require 0 <= balanceOf[stor3]
                            require balanceOf[msg.sender] >= balanceOf[msg.sender]
                            require balanceOf[msg.sender] >= 0
                            balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                            require totalSupply >= totalSupply
                            require totalSupply >= 0
                            emit 0x4dd8d32b: msg.value / 10^18, 0, 96, calldata.size, call.data[0 len calldata.size], msg.sender
                        else:
                            require sub_453200f6 + (500 * msg.value) >= 500 * msg.value
                            require sub_453200f6 + (500 * msg.value) >= sub_453200f6
                            require balanceOf[stor3] >= sub_453200f6 + (500 * msg.value)
                            if not stor15:
                                if not stor16:
                                    require 0 <= msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                else:
                                    require msg.value / 200 >= 0
                                    require msg.value / 200 >= msg.value / 200
                                    call stor16 with:
                                       value msg.value / 200 wei
                                         gas gas_remaining - 34050 wei
                                    require ext_call.success
                                    require msg.value / 200 <= msg.value
                                    call owner with:
                                       value msg.value - (msg.value / 200) wei
                                         gas gas_remaining - 34050 wei
                            else:
                                require msg.value / 200 >= 0
                                require msg.value / 200 >= msg.value / 200
                                call stor15 with:
                                   value msg.value / 200 wei
                                     gas gas_remaining - 34050 wei
                                require ext_call.success
                                if not stor16:
                                    require msg.value / 200 <= msg.value
                                    call owner with:
                                       value msg.value - (msg.value / 200) wei
                                         gas gas_remaining - 34050 wei
                                else:
                                    require 2 * msg.value / 200 >= msg.value / 200
                                    call stor16 with:
                                       value msg.value / 200 wei
                                         gas gas_remaining - 34050 wei
                                    require ext_call.success
                                    require 2 * msg.value / 200 <= msg.value
                                    call owner with:
                                       value msg.value - (2 * msg.value / 200) wei
                                         gas gas_remaining - 34050 wei
                            require ext_call.success
                            require 500 * msg.value <= balanceOf[stor3]
                            balanceOf[stor3] += -500 * msg.value
                            require (500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            require (500 * msg.value) + balanceOf[msg.sender] >= 500 * msg.value
                            balanceOf[address(msg.sender)] = (500 * msg.value) + balanceOf[msg.sender]
                            require (500 * msg.value) + totalSupply >= totalSupply
                            require (500 * msg.value) + totalSupply >= 500 * msg.value
                            totalSupply += 500 * msg.value
                            emit 0x4dd8d32b: msg.value / 10^18, 500 * msg.value / 10^18, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
}



}
