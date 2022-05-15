contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor3 = 8
    stor7 = 25 * 10^18 * 3600
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 5000
    stor12 = 1
    stor13 = 480
    mem[96 len -9021] = code.data[9599 len -9021]
    mem[64] = -8925
    stor0 = msg.sender
    stor4 = mem[96] * 10^stor3
    stor5[address(msg.sender)] = stor4
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[578 len 9021]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of struct stor14;
array of address stor15;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function initCrowd() {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sub_f6d8454f(?) {
    require msg.sender == owner
    stor9 = arg1
    if stor9 == 1:
        stor10 = block.timestamp
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 < 50000
    stor11 = arg1
}

function sub_6f112288(?) {
    if not stor12:
        return 1
    require stor10 <= block.timestamp
    require stor13
    return block.timestamp - stor10 / stor13 >= 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_52592e2a(?) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 <= 1
    require arg2 > 0
    stor12 = arg1
    if not arg2:
        stor13 = 0
    else:
        require arg2
        require 60 * arg2 / arg2 == 60
        stor13 = 60 * arg2
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function buyTokens(address arg1) payable {
    require not stor9
    require block.timestamp > 424048 * 3600
    require 10^18 <= msg.value
    require msg.value - 10^18 >= 0
    require arg1
    require balanceOf[stor0] >= stor11 * msg.value / 10^10
    require balanceOf[address(arg1)] + (stor11 * msg.value / 10^10) > balanceOf[address(arg1)]
    if stor14[address(arg1)].field_0:
        stor14[address(arg1)].field_0 += msg.value
        stor14[address(arg1)].field_256 += stor11 * msg.value / 10^10
    else:
        stor15.length++
        if not stor15.length <= stor15.length + 1:
            idx = stor15.length + 1
            while stor15.length > idx:
                uint256(stor15[idx]) = 0
                idx = idx + 1
                continue 
        address(stor15[stor15.length]) = arg1
        if stor14[address(arg1)].field_0:
            stor14[address(arg1)].field_0 += msg.value
            stor14[address(arg1)].field_256 += stor11 * msg.value / 10^10
        else:
            if stor14[address(arg1)].field_512:
                stor14[address(arg1)].field_0 += msg.value
                stor14[address(arg1)].field_256 += stor11 * msg.value / 10^10
            else:
                stor14[address(arg1)].field_0 = msg.value
                stor14[address(arg1)].field_256 = stor11 * msg.value / 10^10
                stor14[address(arg1)].field_512 = 0
                stor14[address(arg1)].field_768 = 0
                stor14[address(arg1)].field_1024 = 0
                stor14[address(arg1)].field_1280 = 0
                stor14[address(arg1)].field_1536 = 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require stor8 + msg.value >= stor8
    stor8 += msg.value
    balanceOf[stor0] -= stor11 * msg.value / 10^10
    balanceOf[address(arg1)] += stor11 * msg.value / 10^10
    emit Transfer((stor11 * msg.value / 10^10), owner, arg1);
}

function _fallback() payable {
    require not stor9
    require block.timestamp > 424048 * 3600
    require 10^18 <= msg.value
    require msg.value - 10^18 >= 0
    require msg.sender
    require balanceOf[stor0] >= stor11 * msg.value / 10^10
    require balanceOf[address(msg.sender)] + (stor11 * msg.value / 10^10) > balanceOf[address(msg.sender)]
    if stor14[address(msg.sender)].field_0:
        stor14[address(msg.sender)].field_0 += msg.value
        stor14[address(msg.sender)].field_256 += stor11 * msg.value / 10^10
    else:
        stor15.length++
        if not stor15.length <= stor15.length + 1:
            idx = stor15.length + 1
            while stor15.length > idx:
                uint256(stor15[idx]) = 0
                idx = idx + 1
                continue 
        address(stor15[stor15.length]) = msg.sender
        if stor14[address(msg.sender)].field_0:
            stor14[address(msg.sender)].field_0 += msg.value
            stor14[address(msg.sender)].field_256 += stor11 * msg.value / 10^10
        else:
            if stor14[address(msg.sender)].field_512:
                stor14[address(msg.sender)].field_0 += msg.value
                stor14[address(msg.sender)].field_256 += stor11 * msg.value / 10^10
            else:
                stor14[address(msg.sender)].field_0 = msg.value
                stor14[address(msg.sender)].field_256 = stor11 * msg.value / 10^10
                stor14[address(msg.sender)].field_512 = 0
                stor14[address(msg.sender)].field_768 = 0
                stor14[address(msg.sender)].field_1024 = 0
                stor14[address(msg.sender)].field_1280 = 0
                stor14[address(msg.sender)].field_1536 = 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require stor8 + msg.value >= stor8
    stor8 += msg.value
    balanceOf[stor0] -= stor11 * msg.value / 10^10
    balanceOf[address(msg.sender)] += stor11 * msg.value / 10^10
    emit Transfer((stor11 * msg.value / 10^10), owner, msg.sender);
}

function sub_130e052b(?) {
    require msg.sender == owner
    require arg1
    require arg1 != msg.sender
    require arg3 > 0
    require arg4 / 10 > 0
    if not arg3:
        if not arg2:
            if stor14[address(arg1)].field_0:
                stor14[address(arg1)].field_512 = 0
                stor14[address(arg1)].field_768 = arg4
                stor14[address(arg1)].field_1024 = 0
                if stor9 == 1:
                    stor14[address(arg1)].field_1280 = stor10
            else:
                if stor14[address(arg1)].field_512:
                    stor14[address(arg1)].field_512 = 0
                    stor14[address(arg1)].field_768 = arg4
                    stor14[address(arg1)].field_1024 = 0
                else:
                    stor14[address(arg1)].field_0 = 0
                    stor14[address(arg1)].field_256 = 0
                    stor14[address(arg1)].field_512 = 0
                    stor14[address(arg1)].field_768 = arg4
                    stor14[address(arg1)].field_1024 = 0
                    stor14[address(arg1)].field_1280 = 0
                    stor14[address(arg1)].field_1536 = 0
                if stor9 == 1:
                    stor14[address(arg1)].field_1280 = stor10
        else:
            if arg2 == 1:
                if stor14[address(arg1)].field_0:
                    stor14[address(arg1)].field_512 = 1
                    stor14[address(arg1)].field_768 = arg4
                    stor14[address(arg1)].field_1024 = 0
                    if stor9 == 1:
                        stor14[address(arg1)].field_1280 = stor10
                else:
                    if stor14[address(arg1)].field_512:
                        stor14[address(arg1)].field_512 = 1
                        stor14[address(arg1)].field_768 = arg4
                        stor14[address(arg1)].field_1024 = 0
                    else:
                        stor14[address(arg1)].field_0 = 0
                        stor14[address(arg1)].field_256 = 0
                        stor14[address(arg1)].field_512 = 1
                        stor14[address(arg1)].field_768 = arg4
                        stor14[address(arg1)].field_1024 = 0
                        stor14[address(arg1)].field_1280 = 0
                        stor14[address(arg1)].field_1536 = 0
                    if stor9 == 1:
                        stor14[address(arg1)].field_1280 = stor10
            else:
                if arg2 != 2:
                    if stor14[address(arg1)].field_0:
                        stor14[address(arg1)].field_512 = 0
                        stor14[address(arg1)].field_768 = arg4
                        stor14[address(arg1)].field_1024 = 0
                        if stor9 == 1:
                            stor14[address(arg1)].field_1280 = stor10
                    else:
                        if stor14[address(arg1)].field_512:
                            stor14[address(arg1)].field_512 = 0
                            stor14[address(arg1)].field_768 = arg4
                            stor14[address(arg1)].field_1024 = 0
                        else:
                            stor14[address(arg1)].field_0 = 0
                            stor14[address(arg1)].field_256 = 0
                            stor14[address(arg1)].field_512 = 0
                            stor14[address(arg1)].field_768 = arg4
                            stor14[address(arg1)].field_1024 = 0
                            stor14[address(arg1)].field_1280 = 0
                            stor14[address(arg1)].field_1536 = 0
                        if stor9 == 1:
                            stor14[address(arg1)].field_1280 = stor10
                else:
                    if stor14[address(arg1)].field_0:
                        stor14[address(arg1)].field_512 = 2
                        stor14[address(arg1)].field_768 = arg4
                        stor14[address(arg1)].field_1024 = 0
                        if stor9 == 1:
                            stor14[address(arg1)].field_1280 = stor10
                    else:
                        if stor14[address(arg1)].field_512:
                            stor14[address(arg1)].field_512 = 2
                            stor14[address(arg1)].field_768 = arg4
                            stor14[address(arg1)].field_1024 = 0
                        else:
                            stor14[address(arg1)].field_0 = 0
                            stor14[address(arg1)].field_256 = 0
                            stor14[address(arg1)].field_512 = 2
                            stor14[address(arg1)].field_768 = arg4
                            stor14[address(arg1)].field_1024 = 0
                            stor14[address(arg1)].field_1280 = 0
                            stor14[address(arg1)].field_1536 = 0
                        if stor9 == 1:
                            stor14[address(arg1)].field_1280 = stor10
    else:
        require arg3
        require 60 * arg3 / arg3 == 60
        if not arg2:
            if stor14[address(arg1)].field_0:
                stor14[address(arg1)].field_512 = 0
                stor14[address(arg1)].field_768 = arg4
                stor14[address(arg1)].field_1024 = 60 * arg3
                if stor9 == 1:
                    stor14[address(arg1)].field_1280 = stor10
            else:
                if stor14[address(arg1)].field_512:
                    stor14[address(arg1)].field_512 = 0
                    stor14[address(arg1)].field_768 = arg4
                    stor14[address(arg1)].field_1024 = 60 * arg3
                else:
                    stor14[address(arg1)].field_0 = 0
                    stor14[address(arg1)].field_256 = 0
                    stor14[address(arg1)].field_512 = 0
                    stor14[address(arg1)].field_768 = arg4
                    stor14[address(arg1)].field_1024 = 60 * arg3
                    stor14[address(arg1)].field_1280 = 0
                    stor14[address(arg1)].field_1536 = 0
                if stor9 == 1:
                    stor14[address(arg1)].field_1280 = stor10
        else:
            if arg2 == 1:
                if stor14[address(arg1)].field_0:
                    stor14[address(arg1)].field_512 = 1
                    stor14[address(arg1)].field_768 = arg4
                    stor14[address(arg1)].field_1024 = 60 * arg3
                    if stor9 == 1:
                        stor14[address(arg1)].field_1280 = stor10
                else:
                    if stor14[address(arg1)].field_512:
                        stor14[address(arg1)].field_512 = 1
                        stor14[address(arg1)].field_768 = arg4
                        stor14[address(arg1)].field_1024 = 60 * arg3
                    else:
                        stor14[address(arg1)].field_0 = 0
                        stor14[address(arg1)].field_256 = 0
                        stor14[address(arg1)].field_512 = 1
                        stor14[address(arg1)].field_768 = arg4
                        stor14[address(arg1)].field_1024 = 60 * arg3
                        stor14[address(arg1)].field_1280 = 0
                        stor14[address(arg1)].field_1536 = 0
                    if stor9 == 1:
                        stor14[address(arg1)].field_1280 = stor10
            else:
                if arg2 != 2:
                    if stor14[address(arg1)].field_0:
                        stor14[address(arg1)].field_512 = 0
                        stor14[address(arg1)].field_768 = arg4
                        stor14[address(arg1)].field_1024 = 60 * arg3
                        if stor9 == 1:
                            stor14[address(arg1)].field_1280 = stor10
                    else:
                        if stor14[address(arg1)].field_512:
                            stor14[address(arg1)].field_512 = 0
                            stor14[address(arg1)].field_768 = arg4
                            stor14[address(arg1)].field_1024 = 60 * arg3
                        else:
                            stor14[address(arg1)].field_0 = 0
                            stor14[address(arg1)].field_256 = 0
                            stor14[address(arg1)].field_512 = 0
                            stor14[address(arg1)].field_768 = arg4
                            stor14[address(arg1)].field_1024 = 60 * arg3
                            stor14[address(arg1)].field_1280 = 0
                            stor14[address(arg1)].field_1536 = 0
                        if stor9 == 1:
                            stor14[address(arg1)].field_1280 = stor10
                else:
                    if stor14[address(arg1)].field_0:
                        stor14[address(arg1)].field_512 = 2
                        stor14[address(arg1)].field_768 = arg4
                        stor14[address(arg1)].field_1024 = 60 * arg3
                        if stor9 == 1:
                            stor14[address(arg1)].field_1280 = stor10
                    else:
                        if stor14[address(arg1)].field_512:
                            stor14[address(arg1)].field_512 = 2
                            stor14[address(arg1)].field_768 = arg4
                            stor14[address(arg1)].field_1024 = 60 * arg3
                        else:
                            stor14[address(arg1)].field_0 = 0
                            stor14[address(arg1)].field_256 = 0
                            stor14[address(arg1)].field_512 = 2
                            stor14[address(arg1)].field_768 = arg4
                            stor14[address(arg1)].field_1024 = 60 * arg3
                            stor14[address(arg1)].field_1280 = 0
                            stor14[address(arg1)].field_1536 = 0
                        if stor9 == 1:
                            stor14[address(arg1)].field_1280 = stor10
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require stor9 == 1
    if not stor14[address(arg1)].field_0:
        if stor12:
            require stor10 <= block.timestamp
            require stor13
            require block.timestamp - stor10 / stor13 >= 1 == 1
    else:
        if not stor14[address(arg1)].field_512:
            if stor12:
                require stor10 <= block.timestamp
                require stor13
                require block.timestamp - stor10 / stor13 >= 1 == 1
        else:
            if stor14[address(arg1)].field_512 != 1:
                if stor14[address(arg1)].field_1280:
                    require stor14[address(arg1)].field_1280 <= block.timestamp
                    require stor14[address(arg1)].field_1024
                    if block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                        if not stor14[address(arg1)].field_256:
                            if stor14[address(arg1)].field_256 <= 0:
                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                stor14[address(arg1)].field_512 = 1
                            else:
                                if stor14[address(arg1)].field_1536 < 0:
                                    stor14[address(arg1)].field_1536 = 0
                                    stor14[address(arg1)].field_1536 = 0
                                else:
                                    if stor14[address(arg1)].field_256 <= 0:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_512 = 1
                        else:
                            require stor14[address(arg1)].field_256
                            require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / stor14[address(arg1)].field_256 == stor14[address(arg1)].field_768
                            if not stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                if stor14[address(arg1)].field_256 <= 0:
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_512 = 1
                                else:
                                    if stor14[address(arg1)].field_1536 < 0:
                                        stor14[address(arg1)].field_1536 = 0
                                        stor14[address(arg1)].field_1536 = 0
                                    else:
                                        if stor14[address(arg1)].field_256 <= 0:
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_512 = 1
                            else:
                                require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100
                                require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024 / stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 == block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_512 = 1
                                else:
                                    if stor14[address(arg1)].field_1536 < stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                    else:
                                        if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_512 = 1
                        require stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256
                        require arg3 <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - arg3 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536
                    else:
                        require stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256
                        if not stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                            stor14[address(arg1)].field_512 = 1
                        else:
                            require arg3 <= balanceOf[address(arg1)]
                            require stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536 <= balanceOf[address(arg1)] - arg3
                            if balanceOf[address(arg1)] - arg3 - stor14[address(arg1)].field_256 + stor14[address(arg1)].field_1536 < 0:
                                if not stor14[address(arg1)].field_256:
                                    if stor14[address(arg1)].field_256 <= 0:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_512 = 1
                                    else:
                                        if stor14[address(arg1)].field_1536 < 0:
                                            stor14[address(arg1)].field_1536 = 0
                                            stor14[address(arg1)].field_1536 = 0
                                        else:
                                            if stor14[address(arg1)].field_256 <= 0:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_512 = 1
                                else:
                                    require stor14[address(arg1)].field_256
                                    require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / stor14[address(arg1)].field_256 == stor14[address(arg1)].field_768
                                    if not stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                        if stor14[address(arg1)].field_256 <= 0:
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_512 = 1
                                        else:
                                            if stor14[address(arg1)].field_1536 < 0:
                                                stor14[address(arg1)].field_1536 = 0
                                                stor14[address(arg1)].field_1536 = 0
                                            else:
                                                if stor14[address(arg1)].field_256 <= 0:
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_512 = 1
                                    else:
                                        require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100
                                        require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024 / stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 == block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                        if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_512 = 1
                                        else:
                                            if stor14[address(arg1)].field_1536 < stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                            else:
                                                if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_512 = 1
                                require stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256
                                require arg3 <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - arg3 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536
                else:
                    stor14[address(arg1)].field_1280 = stor10
                    require stor10 <= block.timestamp
                    require stor14[address(arg1)].field_1024
                    if block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                        if not stor14[address(arg1)].field_256:
                            if stor14[address(arg1)].field_256 <= 0:
                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                stor14[address(arg1)].field_512 = 1
                            else:
                                if stor14[address(arg1)].field_1536 < 0:
                                    stor14[address(arg1)].field_1536 = 0
                                    stor14[address(arg1)].field_1536 = 0
                                else:
                                    if stor14[address(arg1)].field_256 <= 0:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_512 = 1
                        else:
                            require stor14[address(arg1)].field_256
                            require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / stor14[address(arg1)].field_256 == stor14[address(arg1)].field_768
                            if not stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                if stor14[address(arg1)].field_256 <= 0:
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_512 = 1
                                else:
                                    if stor14[address(arg1)].field_1536 < 0:
                                        stor14[address(arg1)].field_1536 = 0
                                        stor14[address(arg1)].field_1536 = 0
                                    else:
                                        if stor14[address(arg1)].field_256 <= 0:
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_512 = 1
                            else:
                                require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100
                                require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024 / stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 == block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_512 = 1
                                else:
                                    if stor14[address(arg1)].field_1536 < stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                    else:
                                        if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_512 = 1
                        require stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256
                        require arg3 <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - arg3 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536
                    else:
                        require stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256
                        if not stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                            stor14[address(arg1)].field_512 = 1
                        else:
                            require arg3 <= balanceOf[address(arg1)]
                            require stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536 <= balanceOf[address(arg1)] - arg3
                            if balanceOf[address(arg1)] - arg3 - stor14[address(arg1)].field_256 + stor14[address(arg1)].field_1536 < 0:
                                if not stor14[address(arg1)].field_256:
                                    if stor14[address(arg1)].field_256 <= 0:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_512 = 1
                                    else:
                                        if stor14[address(arg1)].field_1536 < 0:
                                            stor14[address(arg1)].field_1536 = 0
                                            stor14[address(arg1)].field_1536 = 0
                                        else:
                                            if stor14[address(arg1)].field_256 <= 0:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_512 = 1
                                else:
                                    require stor14[address(arg1)].field_256
                                    require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / stor14[address(arg1)].field_256 == stor14[address(arg1)].field_768
                                    if not stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                        if stor14[address(arg1)].field_256 <= 0:
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_512 = 1
                                        else:
                                            if stor14[address(arg1)].field_1536 < 0:
                                                stor14[address(arg1)].field_1536 = 0
                                                stor14[address(arg1)].field_1536 = 0
                                            else:
                                                if stor14[address(arg1)].field_256 <= 0:
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_512 = 1
                                    else:
                                        require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100
                                        require stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024 / stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 == block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                        if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                            stor14[address(arg1)].field_512 = 1
                                        else:
                                            if stor14[address(arg1)].field_1536 < stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                            else:
                                                if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_512 = 1
                                require stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256
                                require arg3 <= balanceOf[address(arg1)]
                                require balanceOf[address(arg1)] - arg3 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit mylog(0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor9 == 1
    if not stor14[address(msg.sender)].field_0:
        if stor12:
            require stor10 <= block.timestamp
            require stor13
            require block.timestamp - stor10 / stor13 >= 1 == 1
    else:
        if not stor14[address(msg.sender)].field_512:
            if stor12:
                require stor10 <= block.timestamp
                require stor13
                require block.timestamp - stor10 / stor13 >= 1 == 1
        else:
            if stor14[address(msg.sender)].field_512 != 1:
                if stor14[address(msg.sender)].field_1280:
                    require stor14[address(msg.sender)].field_1280 <= block.timestamp
                    require stor14[address(msg.sender)].field_1024
                    if block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024:
                        if not stor14[address(msg.sender)].field_256:
                            if stor14[address(msg.sender)].field_256 <= 0:
                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                stor14[address(msg.sender)].field_512 = 1
                            else:
                                if stor14[address(msg.sender)].field_1536 < 0:
                                    stor14[address(msg.sender)].field_1536 = 0
                                    stor14[address(msg.sender)].field_1536 = 0
                                else:
                                    if stor14[address(msg.sender)].field_256 <= 0:
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                        stor14[address(msg.sender)].field_512 = 1
                        else:
                            require stor14[address(msg.sender)].field_256
                            require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / stor14[address(msg.sender)].field_256 == stor14[address(msg.sender)].field_768
                            if not stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100:
                                if stor14[address(msg.sender)].field_256 <= 0:
                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                    stor14[address(msg.sender)].field_512 = 1
                                else:
                                    if stor14[address(msg.sender)].field_1536 < 0:
                                        stor14[address(msg.sender)].field_1536 = 0
                                        stor14[address(msg.sender)].field_1536 = 0
                                    else:
                                        if stor14[address(msg.sender)].field_256 <= 0:
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_512 = 1
                            else:
                                require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100
                                require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024 / stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 == block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024
                                if stor14[address(msg.sender)].field_256 <= stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024:
                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                    stor14[address(msg.sender)].field_512 = 1
                                else:
                                    if stor14[address(msg.sender)].field_1536 < stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024:
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024
                                    else:
                                        if stor14[address(msg.sender)].field_256 <= stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024:
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_512 = 1
                        require stor14[address(msg.sender)].field_1536 <= stor14[address(msg.sender)].field_256
                        require arg2 <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - arg2 >= stor14[address(msg.sender)].field_256 - stor14[address(msg.sender)].field_1536
                    else:
                        require stor14[address(msg.sender)].field_1536 <= stor14[address(msg.sender)].field_256
                        if not stor14[address(msg.sender)].field_256 - stor14[address(msg.sender)].field_1536:
                            stor14[address(msg.sender)].field_512 = 1
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
                            require stor14[address(msg.sender)].field_256 - stor14[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)] - arg2
                            if balanceOf[address(msg.sender)] - arg2 - stor14[address(msg.sender)].field_256 + stor14[address(msg.sender)].field_1536 < 0:
                                if not stor14[address(msg.sender)].field_256:
                                    if stor14[address(msg.sender)].field_256 <= 0:
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                        stor14[address(msg.sender)].field_512 = 1
                                    else:
                                        if stor14[address(msg.sender)].field_1536 < 0:
                                            stor14[address(msg.sender)].field_1536 = 0
                                            stor14[address(msg.sender)].field_1536 = 0
                                        else:
                                            if stor14[address(msg.sender)].field_256 <= 0:
                                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                stor14[address(msg.sender)].field_512 = 1
                                else:
                                    require stor14[address(msg.sender)].field_256
                                    require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / stor14[address(msg.sender)].field_256 == stor14[address(msg.sender)].field_768
                                    if not stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100:
                                        if stor14[address(msg.sender)].field_256 <= 0:
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_512 = 1
                                        else:
                                            if stor14[address(msg.sender)].field_1536 < 0:
                                                stor14[address(msg.sender)].field_1536 = 0
                                                stor14[address(msg.sender)].field_1536 = 0
                                            else:
                                                if stor14[address(msg.sender)].field_256 <= 0:
                                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                    stor14[address(msg.sender)].field_512 = 1
                                    else:
                                        require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100
                                        require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024 / stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 == block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024
                                        if stor14[address(msg.sender)].field_256 <= stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024:
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_512 = 1
                                        else:
                                            if stor14[address(msg.sender)].field_1536 < stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024:
                                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024
                                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024
                                            else:
                                                if stor14[address(msg.sender)].field_256 <= stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor14[address(msg.sender)].field_1280 / stor14[address(msg.sender)].field_1024:
                                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                    stor14[address(msg.sender)].field_512 = 1
                                require stor14[address(msg.sender)].field_1536 <= stor14[address(msg.sender)].field_256
                                require arg2 <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - arg2 >= stor14[address(msg.sender)].field_256 - stor14[address(msg.sender)].field_1536
                else:
                    stor14[address(msg.sender)].field_1280 = stor10
                    require stor10 <= block.timestamp
                    require stor14[address(msg.sender)].field_1024
                    if block.timestamp - stor10 / stor14[address(msg.sender)].field_1024:
                        if not stor14[address(msg.sender)].field_256:
                            if stor14[address(msg.sender)].field_256 <= 0:
                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                stor14[address(msg.sender)].field_512 = 1
                            else:
                                if stor14[address(msg.sender)].field_1536 < 0:
                                    stor14[address(msg.sender)].field_1536 = 0
                                    stor14[address(msg.sender)].field_1536 = 0
                                else:
                                    if stor14[address(msg.sender)].field_256 <= 0:
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                        stor14[address(msg.sender)].field_512 = 1
                        else:
                            require stor14[address(msg.sender)].field_256
                            require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / stor14[address(msg.sender)].field_256 == stor14[address(msg.sender)].field_768
                            if not stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100:
                                if stor14[address(msg.sender)].field_256 <= 0:
                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                    stor14[address(msg.sender)].field_512 = 1
                                else:
                                    if stor14[address(msg.sender)].field_1536 < 0:
                                        stor14[address(msg.sender)].field_1536 = 0
                                        stor14[address(msg.sender)].field_1536 = 0
                                    else:
                                        if stor14[address(msg.sender)].field_256 <= 0:
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_512 = 1
                            else:
                                require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100
                                require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024 / stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 == block.timestamp - stor10 / stor14[address(msg.sender)].field_1024
                                if stor14[address(msg.sender)].field_256 <= stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024:
                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                    stor14[address(msg.sender)].field_512 = 1
                                else:
                                    if stor14[address(msg.sender)].field_1536 < stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024:
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024
                                    else:
                                        if stor14[address(msg.sender)].field_256 <= stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024:
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_512 = 1
                        require stor14[address(msg.sender)].field_1536 <= stor14[address(msg.sender)].field_256
                        require arg2 <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - arg2 >= stor14[address(msg.sender)].field_256 - stor14[address(msg.sender)].field_1536
                    else:
                        require stor14[address(msg.sender)].field_1536 <= stor14[address(msg.sender)].field_256
                        if not stor14[address(msg.sender)].field_256 - stor14[address(msg.sender)].field_1536:
                            stor14[address(msg.sender)].field_512 = 1
                        else:
                            require arg2 <= balanceOf[address(msg.sender)]
                            require stor14[address(msg.sender)].field_256 - stor14[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)] - arg2
                            if balanceOf[address(msg.sender)] - arg2 - stor14[address(msg.sender)].field_256 + stor14[address(msg.sender)].field_1536 < 0:
                                if not stor14[address(msg.sender)].field_256:
                                    if stor14[address(msg.sender)].field_256 <= 0:
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                        stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                        stor14[address(msg.sender)].field_512 = 1
                                    else:
                                        if stor14[address(msg.sender)].field_1536 < 0:
                                            stor14[address(msg.sender)].field_1536 = 0
                                            stor14[address(msg.sender)].field_1536 = 0
                                        else:
                                            if stor14[address(msg.sender)].field_256 <= 0:
                                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                stor14[address(msg.sender)].field_512 = 1
                                else:
                                    require stor14[address(msg.sender)].field_256
                                    require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / stor14[address(msg.sender)].field_256 == stor14[address(msg.sender)].field_768
                                    if not stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100:
                                        if stor14[address(msg.sender)].field_256 <= 0:
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_512 = 1
                                        else:
                                            if stor14[address(msg.sender)].field_1536 < 0:
                                                stor14[address(msg.sender)].field_1536 = 0
                                                stor14[address(msg.sender)].field_1536 = 0
                                            else:
                                                if stor14[address(msg.sender)].field_256 <= 0:
                                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                    stor14[address(msg.sender)].field_512 = 1
                                    else:
                                        require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100
                                        require stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024 / stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 == block.timestamp - stor10 / stor14[address(msg.sender)].field_1024
                                        if stor14[address(msg.sender)].field_256 <= stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024:
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                            stor14[address(msg.sender)].field_512 = 1
                                        else:
                                            if stor14[address(msg.sender)].field_1536 < stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024:
                                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024
                                                stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024
                                            else:
                                                if stor14[address(msg.sender)].field_256 <= stor14[address(msg.sender)].field_256 * stor14[address(msg.sender)].field_768 / 100 * block.timestamp - stor10 / stor14[address(msg.sender)].field_1024:
                                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                    stor14[address(msg.sender)].field_1536 = stor14[address(msg.sender)].field_256
                                                    stor14[address(msg.sender)].field_512 = 1
                                require stor14[address(msg.sender)].field_1536 <= stor14[address(msg.sender)].field_256
                                require arg2 <= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] - arg2 >= stor14[address(msg.sender)].field_256 - stor14[address(msg.sender)].field_1536
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit mylog(0);
}

function checkLock(address arg1, uint256 arg2) {
    if not stor14[address(arg1)].field_0:
        return 0
    if not stor14[address(arg1)].field_512:
        return 0
    if stor14[address(arg1)].field_512 == 1:
        return 1, 0
    if stor14[address(arg1)].field_1280:
        if stor14[address(arg1)].field_1280 <= block.timestamp:
            if stor14[address(arg1)].field_1024:
                if block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                    if not stor14[address(arg1)].field_256:
                        if stor14[address(arg1)].field_256 <= 0:
                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                            stor14[address(arg1)].field_512 = 1
                        else:
                            if stor14[address(arg1)].field_1536 < 0:
                                stor14[address(arg1)].field_1536 = 0
                                stor14[address(arg1)].field_1536 = 0
                            else:
                                if stor14[address(arg1)].field_256 <= 0:
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_512 = 1
                        if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                            if arg2 <= balanceOf[address(arg1)]:
                                if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                    return 2, 0
                    else:
                        if stor14[address(arg1)].field_256:
                            if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / stor14[address(arg1)].field_256 == stor14[address(arg1)].field_768:
                                if not stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                    if stor14[address(arg1)].field_256 <= 0:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_512 = 1
                                    else:
                                        if stor14[address(arg1)].field_1536 < 0:
                                            stor14[address(arg1)].field_1536 = 0
                                            stor14[address(arg1)].field_1536 = 0
                                        else:
                                            if stor14[address(arg1)].field_256 <= 0:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_512 = 1
                                    if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                        if arg2 <= balanceOf[address(arg1)]:
                                            if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                return 2, 0
                                else:
                                    if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                        if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024 / stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 == block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                            if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_512 = 1
                                            else:
                                                if stor14[address(arg1)].field_1536 < stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                                else:
                                                    if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                        stor14[address(arg1)].field_512 = 1
                                            if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                                if arg2 <= balanceOf[address(arg1)]:
                                                    if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                        return 2, 0
                else:
                    if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                        if not stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                            stor14[address(arg1)].field_512 = 1
                            return 1, 0
                        if arg2 <= balanceOf[address(arg1)]:
                            if stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536 <= balanceOf[address(arg1)] - arg2:
                                if balanceOf[address(arg1)] - arg2 - stor14[address(arg1)].field_256 + stor14[address(arg1)].field_1536 >= 0:
                                    return 1, 0
                                if not stor14[address(arg1)].field_256:
                                    if stor14[address(arg1)].field_256 <= 0:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_512 = 1
                                    else:
                                        if stor14[address(arg1)].field_1536 < 0:
                                            stor14[address(arg1)].field_1536 = 0
                                            stor14[address(arg1)].field_1536 = 0
                                        else:
                                            if stor14[address(arg1)].field_256 <= 0:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_512 = 1
                                    if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                        if arg2 <= balanceOf[address(arg1)]:
                                            if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                return 2, 0
                                else:
                                    if stor14[address(arg1)].field_256:
                                        if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / stor14[address(arg1)].field_256 == stor14[address(arg1)].field_768:
                                            if not stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                                if stor14[address(arg1)].field_256 <= 0:
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_512 = 1
                                                else:
                                                    if stor14[address(arg1)].field_1536 < 0:
                                                        stor14[address(arg1)].field_1536 = 0
                                                        stor14[address(arg1)].field_1536 = 0
                                                    else:
                                                        if stor14[address(arg1)].field_256 <= 0:
                                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                            stor14[address(arg1)].field_512 = 1
                                                if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                                    if arg2 <= balanceOf[address(arg1)]:
                                                        if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                            return 2, 0
                                            else:
                                                if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                                    if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024 / stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 == block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                        if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                            stor14[address(arg1)].field_512 = 1
                                                        else:
                                                            if stor14[address(arg1)].field_1536 < stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024
                                                            else:
                                                                if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor14[address(arg1)].field_1280 / stor14[address(arg1)].field_1024:
                                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                                    stor14[address(arg1)].field_512 = 1
                                                        if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                                            if arg2 <= balanceOf[address(arg1)]:
                                                                if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                                    return 2, 0
    else:
        stor14[address(arg1)].field_1280 = stor10
        if stor10 <= block.timestamp:
            if stor14[address(arg1)].field_1024:
                if block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                    if not stor14[address(arg1)].field_256:
                        if stor14[address(arg1)].field_256 <= 0:
                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                            stor14[address(arg1)].field_512 = 1
                        else:
                            if stor14[address(arg1)].field_1536 < 0:
                                stor14[address(arg1)].field_1536 = 0
                                stor14[address(arg1)].field_1536 = 0
                            else:
                                if stor14[address(arg1)].field_256 <= 0:
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                    stor14[address(arg1)].field_512 = 1
                        if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                            if arg2 <= balanceOf[address(arg1)]:
                                if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                    return 2, 0
                    else:
                        if stor14[address(arg1)].field_256:
                            if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / stor14[address(arg1)].field_256 == stor14[address(arg1)].field_768:
                                if not stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                    if stor14[address(arg1)].field_256 <= 0:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_512 = 1
                                    else:
                                        if stor14[address(arg1)].field_1536 < 0:
                                            stor14[address(arg1)].field_1536 = 0
                                            stor14[address(arg1)].field_1536 = 0
                                        else:
                                            if stor14[address(arg1)].field_256 <= 0:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_512 = 1
                                    if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                        if arg2 <= balanceOf[address(arg1)]:
                                            if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                return 2, 0
                                else:
                                    if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                        if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024 / stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 == block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                            if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_512 = 1
                                            else:
                                                if stor14[address(arg1)].field_1536 < stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                                else:
                                                    if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                        stor14[address(arg1)].field_512 = 1
                                            if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                                if arg2 <= balanceOf[address(arg1)]:
                                                    if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                        return 2, 0
                else:
                    if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                        if not stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                            stor14[address(arg1)].field_512 = 1
                            return 1, 0
                        if arg2 <= balanceOf[address(arg1)]:
                            if stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536 <= balanceOf[address(arg1)] - arg2:
                                if balanceOf[address(arg1)] - arg2 - stor14[address(arg1)].field_256 + stor14[address(arg1)].field_1536 >= 0:
                                    return 1, 0
                                if not stor14[address(arg1)].field_256:
                                    if stor14[address(arg1)].field_256 <= 0:
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                        stor14[address(arg1)].field_512 = 1
                                    else:
                                        if stor14[address(arg1)].field_1536 < 0:
                                            stor14[address(arg1)].field_1536 = 0
                                            stor14[address(arg1)].field_1536 = 0
                                        else:
                                            if stor14[address(arg1)].field_256 <= 0:
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                stor14[address(arg1)].field_512 = 1
                                    if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                        if arg2 <= balanceOf[address(arg1)]:
                                            if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                return 2, 0
                                else:
                                    if stor14[address(arg1)].field_256:
                                        if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / stor14[address(arg1)].field_256 == stor14[address(arg1)].field_768:
                                            if not stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                                if stor14[address(arg1)].field_256 <= 0:
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                    stor14[address(arg1)].field_512 = 1
                                                else:
                                                    if stor14[address(arg1)].field_1536 < 0:
                                                        stor14[address(arg1)].field_1536 = 0
                                                        stor14[address(arg1)].field_1536 = 0
                                                    else:
                                                        if stor14[address(arg1)].field_256 <= 0:
                                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                            stor14[address(arg1)].field_512 = 1
                                                if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                                    if arg2 <= balanceOf[address(arg1)]:
                                                        if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                            return 2, 0
                                            else:
                                                if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100:
                                                    if stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024 / stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 == block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                        if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                            stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                            stor14[address(arg1)].field_512 = 1
                                                        else:
                                                            if stor14[address(arg1)].field_1536 < stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                                                stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024
                                                            else:
                                                                if stor14[address(arg1)].field_256 <= stor14[address(arg1)].field_256 * stor14[address(arg1)].field_768 / 100 * block.timestamp - stor10 / stor14[address(arg1)].field_1024:
                                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                                    stor14[address(arg1)].field_1536 = stor14[address(arg1)].field_256
                                                                    stor14[address(arg1)].field_512 = 1
                                                        if stor14[address(arg1)].field_1536 <= stor14[address(arg1)].field_256:
                                                            if arg2 <= balanceOf[address(arg1)]:
                                                                if balanceOf[address(arg1)] - arg2 >= stor14[address(arg1)].field_256 - stor14[address(arg1)].field_1536:
                                                                    return 2, 0
    revert
}



}
