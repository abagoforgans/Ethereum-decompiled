contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint256 stor2;
address stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint8 stor12;

function _fallback() payable {
    stor1 = 0
    stor4 = 0x1067c593a9981eff4a56056dd775627cbe9d9107
    require not msg.value
    stor2[stor4] = 14025000 * 10^18
    stor2[address(this.address)] = 68475000 * 10^18
    stor12[0] = 0
    stor12[1667] = 1
    stor12[1000] = 2
    stor12[715] = 3
    stor12[1] = 4
    stor6 = code.data[6842 len 32]
    stor7 = code.data[6874 len 32]
    stor8 = code.data[6906 len 32]
    stor9 = code.data[6938 len 32]
    stor10 = code.data[6970 len 32]
    stor11 = code.data[7002 len 32]
    return code.data[787 len 6055]
}



// =====================  Runtime code  =====================


const name = 'ShipBloc Token'

const maxPreSale2Token = 30000000 * 10^18

const totalSupply = 82500000 * 10^18

const decimals = 18

const teamAllocated = 14025000 * 10^18

const maxPreSale1Token = 15000000 * 10^18

const totalsupply = 82500000 * 10^18

const symbol = 'SBLOC'


uint256 totalUsedTokens;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor4;
uint256 no_of_tokens;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint8 stor12;

function no_of_tokens() {
    return no_of_tokens
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalUsedTokens() {
    return totalUsedTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function drain() {
    require msg.sender == stor4
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drainToken() {
    require msg.sender == stor4
    if block.number < stor6:
        require stor12[0] <= 4
        require stor12[0] == 4
    else:
        if block.number < stor7:
            require 15000000 * 10^18 > totalUsedTokens
            require stor12[1667] <= 4
            require stor12[1667] == 4
        else:
            if block.number < stor8:
                require stor12[0] <= 4
                require stor12[0] == 4
            else:
                if block.number < stor9:
                    require 30000000 * 10^18 > totalUsedTokens
                    require stor12[1000] <= 4
                    require stor12[1000] == 4
                else:
                    if block.number < stor10:
                        require stor12[0] <= 4
                        require stor12[0] == 4
                    else:
                        if block.number >= stor11:
                            require stor12[1] <= 4
                            require stor12[1] == 4
                        else:
                            require stor12[715] <= 4
                            require stor12[715] == 4
    require balanceOf[stor4] + balanceOf[address(this.address)] >= balanceOf[stor4]
    balanceOf[stor4] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, stor4);
    balanceOf[address(this.address)] = 0
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if block.number < stor6:
        require stor12[0] <= 4
        require stor12[0] == 4
    else:
        if block.number < stor7:
            require 15000000 * 10^18 > totalUsedTokens
            require stor12[1667] <= 4
            require stor12[1667] == 4
        else:
            if block.number < stor8:
                require stor12[0] <= 4
                require stor12[0] == 4
            else:
                if block.number < stor9:
                    require 30000000 * 10^18 > totalUsedTokens
                    require stor12[1000] <= 4
                    require stor12[1000] == 4
                else:
                    if block.number < stor10:
                        require stor12[0] <= 4
                        require stor12[0] == 4
                    else:
                        if block.number >= stor11:
                            require stor12[1] <= 4
                            require stor12[1] == 4
                        else:
                            require stor12[715] <= 4
                            require stor12[715] == 4
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    if block.number < stor6:
        require stor12[0] <= 4
        require stor12[0] == 4
    else:
        if block.number < stor7:
            require 15000000 * 10^18 > totalUsedTokens
            require stor12[1667] <= 4
            require stor12[1667] == 4
        else:
            if block.number < stor8:
                require stor12[0] <= 4
                require stor12[0] == 4
            else:
                if block.number < stor9:
                    require 30000000 * 10^18 > totalUsedTokens
                    require stor12[1000] <= 4
                    require stor12[1000] == 4
                else:
                    if block.number < stor10:
                        require stor12[0] <= 4
                        require stor12[0] == 4
                    else:
                        if block.number >= stor11:
                            require stor12[1] <= 4
                            require stor12[1] == 4
                        else:
                            require stor12[715] <= 4
                            require stor12[715] == 4
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value
    if block.number < stor6:
        require stor12[0] <= 4
        require stor12[0]
        require stor12[0] <= 4
        require stor12[0] != 4
        if msg.value:
            require msg.value
            require not 0 / msg.value
        no_of_tokens = 0
    else:
        if block.number < stor7:
            require 15000000 * 10^18 > totalUsedTokens
            require stor12[1667] <= 4
            require stor12[1667]
            require stor12[1667] <= 4
            require stor12[1667] != 4
            if msg.value:
                require msg.value
                require 1667 * msg.value / msg.value == 1667
            no_of_tokens = 1667 * msg.value
        else:
            if block.number < stor8:
                require stor12[0] <= 4
                require stor12[0]
                require stor12[0] <= 4
                require stor12[0] != 4
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                no_of_tokens = 0
            else:
                if block.number < stor9:
                    require 30000000 * 10^18 > totalUsedTokens
                    require stor12[1000] <= 4
                    require stor12[1000]
                    require stor12[1000] <= 4
                    require stor12[1000] != 4
                    if msg.value:
                        require msg.value
                        require 1000 * msg.value / msg.value == 1000
                    no_of_tokens = 1000 * msg.value
                else:
                    if block.number < stor10:
                        require stor12[0] <= 4
                        require stor12[0]
                        require stor12[0] <= 4
                        require stor12[0] != 4
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        no_of_tokens = 0
                    else:
                        if block.number >= stor11:
                            require stor12[1] <= 4
                            require stor12[1]
                            require stor12[1] <= 4
                            require stor12[1] != 4
                            if msg.value:
                                require msg.value
                                require msg.value / msg.value == 1
                            no_of_tokens = msg.value
                        else:
                            require stor12[715] <= 4
                            require stor12[715]
                            require stor12[715] <= 4
                            require stor12[715] != 4
                            if msg.value:
                                require msg.value
                                require 715 * msg.value / msg.value == 715
                            no_of_tokens = 715 * msg.value
    require balanceOf[address(this.address)] >= no_of_tokens
    require totalUsedTokens + no_of_tokens >= totalUsedTokens
    totalUsedTokens += no_of_tokens
    require no_of_tokens <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= no_of_tokens
    require balanceOf[address(msg.sender)] + no_of_tokens >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += no_of_tokens
    emit Transfer(no_of_tokens, this.address, msg.sender);
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getStageandPrice() {
    if block.number < stor6:
        if stor12[0] <= 4:
            return 0, stor12[0]
    else:
        if block.number < stor7:
            require 15000000 * 10^18 > totalUsedTokens
            if block.number < stor6:
                if stor12[0] <= 4:
                    return 1667, stor12[0]
            else:
                if block.number < stor7:
                    require 15000000 * 10^18 > totalUsedTokens
                    if stor12[1667] <= 4:
                        return 1667, stor12[1667]
                else:
                    if block.number < stor8:
                        if stor12[0] <= 4:
                            return 1667, stor12[0]
                    else:
                        if block.number < stor9:
                            require 30000000 * 10^18 > totalUsedTokens
                            if stor12[1000] <= 4:
                                return 1667, stor12[1000]
                        else:
                            if block.number < stor10:
                                if stor12[0] <= 4:
                                    return 1667, stor12[0]
                            else:
                                if block.number >= stor11:
                                    if stor12[1] <= 4:
                                        return 1667, stor12[1]
                                else:
                                    if stor12[715] <= 4:
                                        return 1667, stor12[715]
        else:
            if block.number < stor8:
                if block.number < stor6:
                    if stor12[0] <= 4:
                        return 0, stor12[0]
                else:
                    if block.number < stor7:
                        require 15000000 * 10^18 > totalUsedTokens
                        if stor12[1667] <= 4:
                            return 0, stor12[1667]
                    else:
                        if block.number < stor8:
                            if stor12[0] <= 4:
                                return 0, stor12[0]
                        else:
                            if block.number < stor9:
                                require 30000000 * 10^18 > totalUsedTokens
                                if stor12[1000] <= 4:
                                    return 0, stor12[1000]
                            else:
                                if block.number < stor10:
                                    if stor12[0] <= 4:
                                        return 0, stor12[0]
                                else:
                                    if block.number >= stor11:
                                        if stor12[1] <= 4:
                                            return 0, stor12[1]
                                    else:
                                        if stor12[715] <= 4:
                                            return 0, stor12[715]
            else:
                if block.number < stor9:
                    require 30000000 * 10^18 > totalUsedTokens
                    if block.number < stor6:
                        if stor12[0] <= 4:
                            return 1000, stor12[0]
                    else:
                        if block.number < stor7:
                            require 15000000 * 10^18 > totalUsedTokens
                            if stor12[1667] <= 4:
                                return 1000, stor12[1667]
                        else:
                            if block.number < stor8:
                                if stor12[0] <= 4:
                                    return 1000, stor12[0]
                            else:
                                if block.number < stor9:
                                    require 30000000 * 10^18 > totalUsedTokens
                                    if stor12[1000] <= 4:
                                        return 1000, stor12[1000]
                                else:
                                    if block.number < stor10:
                                        if stor12[0] <= 4:
                                            return 1000, stor12[0]
                                    else:
                                        if block.number >= stor11:
                                            if stor12[1] <= 4:
                                                return 1000, stor12[1]
                                        else:
                                            if stor12[715] <= 4:
                                                return 1000, stor12[715]
                else:
                    if block.number < stor10:
                        if block.number < stor6:
                            if stor12[0] <= 4:
                                return 0, stor12[0]
                        else:
                            if block.number < stor7:
                                require 15000000 * 10^18 > totalUsedTokens
                                if stor12[1667] <= 4:
                                    return 0, stor12[1667]
                            else:
                                if block.number < stor8:
                                    if stor12[0] <= 4:
                                        return 0, stor12[0]
                                else:
                                    if block.number < stor9:
                                        require 30000000 * 10^18 > totalUsedTokens
                                        if stor12[1000] <= 4:
                                            return 0, stor12[1000]
                                    else:
                                        if block.number < stor10:
                                            if stor12[0] <= 4:
                                                return 0, stor12[0]
                                        else:
                                            if block.number >= stor11:
                                                if stor12[1] <= 4:
                                                    return 0, stor12[1]
                                            else:
                                                if stor12[715] <= 4:
                                                    return 0, stor12[715]
                    else:
                        if block.number >= stor11:
                            if block.number < stor6:
                                if stor12[0] <= 4:
                                    return 1, stor12[0]
                            else:
                                if block.number < stor7:
                                    require 15000000 * 10^18 > totalUsedTokens
                                    if stor12[1667] <= 4:
                                        return 1, stor12[1667]
                                else:
                                    if block.number < stor8:
                                        if stor12[0] <= 4:
                                            return 1, stor12[0]
                                    else:
                                        if block.number < stor9:
                                            require 30000000 * 10^18 > totalUsedTokens
                                            if stor12[1000] <= 4:
                                                return 1, stor12[1000]
                                        else:
                                            if block.number < stor10:
                                                if stor12[0] <= 4:
                                                    return 1, stor12[0]
                                            else:
                                                if block.number >= stor11:
                                                    if stor12[1] <= 4:
                                                        return 1, stor12[1]
                                                else:
                                                    if stor12[715] <= 4:
                                                        return 1, stor12[715]
                        else:
                            if block.number < stor6:
                                if stor12[0] <= 4:
                                    return 715, stor12[0]
                            else:
                                if block.number < stor7:
                                    require 15000000 * 10^18 > totalUsedTokens
                                    if stor12[1667] <= 4:
                                        return 715, stor12[1667]
                                else:
                                    if block.number < stor8:
                                        if stor12[0] <= 4:
                                            return 715, stor12[0]
                                    else:
                                        if block.number < stor9:
                                            require 30000000 * 10^18 > totalUsedTokens
                                            if stor12[1000] <= 4:
                                                return 715, stor12[1000]
                                        else:
                                            if block.number < stor10:
                                                if stor12[0] <= 4:
                                                    return 715, stor12[0]
                                            else:
                                                if block.number >= stor11:
                                                    if stor12[1] <= 4:
                                                        return 715, stor12[1]
                                                else:
                                                    if stor12[715] <= 4:
                                                        return 715, stor12[715]
    revert
}



}
