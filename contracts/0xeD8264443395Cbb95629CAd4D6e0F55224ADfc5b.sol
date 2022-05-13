contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
mapping of uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint32 stor11;
uint32 stor11; offset 32
uint32 stor11; offset 64
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor4 = 18
    stor5 = 2500 * 3600 * 10^stor4
    stor6 = 12 * 10^6 * 10^stor4
    stor7 = 12 * 10^6 * 10^stor4
    stor8 = 12 * 10^6 * 10^stor4
    stor9 = 6 * 10^6 * 10^stor4
    stor10 = 10000
    uint32(stor11.field_0) = 424038 * 3600
    uint32(stor11.field_32) = 424050 * 3600
    uint32(stor11.field_64) = 424062 * 3600
    stor12 = 4000 * stor10
    stor13 = 3500 * stor10
    stor14 = 3000 * stor10
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1[address(msg.sender)] = stor5
    stor3 = stor5
    stor15 = 0
    return code.data[457 len 9371]
}



// =====================  Runtime code  =====================


#
#  - buy()
#
const name = 'SBT Token'

const symbol = 'SBT'


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 decimals;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint32 sub_47bf07ec;
uint32 sub_5f5cfcc2; offset 32
uint32 sub_f5f72502; offset 64
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stage;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_47bf07ec(?) {
    return sub_47bf07ec
}

function sub_5f5cfcc2(?) {
    return sub_5f5cfcc2
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function stage() {
    require stage <= 4
    return stage
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f5f72502(?) {
    return sub_f5f72502
}

function greedyowner() {
    require msg.sender == owner
    selfdestruct(owner)
}

function setowner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function price() {
    require stage <= 4
    if stage == 1:
        return stor12
    require stage <= 4
    if stage == 2:
        return stor13
    require stage <= 4
    if stage != 3:
        return 0
    return stor14
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require allowance[address(msg.sender)][address(arg1)] >= arg2
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw() {
    require not uint8(stor0.field_160)
    require stage <= 4
    if stage:
        require stage <= 4
        if stage != 1:
            require stage <= 4
            if stage != 1:
                require stage <= 4
                if stage != 2:
                    require stage <= 4
                else:
                    if uint32(block.timestamp) <= sub_f5f72502:
                        require stage <= 4
                    else:
                        require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor8
                        require totalSupply + stor8 >= totalSupply
                        totalSupply += stor8
                        stage = 3
            else:
                if uint32(block.timestamp) > sub_5f5cfcc2:
                    require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] += stor7
                    require totalSupply + stor7 >= totalSupply
                    totalSupply += stor7
                    stage = 2
                else:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
        else:
            if balanceOf[address(this.address)] <= stor9:
                require stage <= 4
                if stage != 1:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor7
                        require totalSupply + stor7 >= totalSupply
                        totalSupply += stor7
                        stage = 2
                    else:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
            else:
                if uint32(block.timestamp) > sub_5f5cfcc2:
                    stage = 4
                else:
                    require stage <= 4
                    if stage != 1:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
                    else:
                        if uint32(block.timestamp) > sub_5f5cfcc2:
                            require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor7
                            require totalSupply + stor7 >= totalSupply
                            totalSupply += stor7
                            stage = 2
                        else:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
    else:
        if uint32(block.timestamp) > sub_47bf07ec:
            require balanceOf[address(this.address)] + stor6 >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += stor6
            require totalSupply + stor6 >= totalSupply
            totalSupply += stor6
            stage = 1
        else:
            require stage <= 4
            if stage != 1:
                require stage <= 4
                if stage != 1:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor7
                        require totalSupply + stor7 >= totalSupply
                        totalSupply += stor7
                        stage = 2
                    else:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
            else:
                if balanceOf[address(this.address)] <= stor9:
                    require stage <= 4
                    if stage != 1:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
                    else:
                        if uint32(block.timestamp) > sub_5f5cfcc2:
                            require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor7
                            require totalSupply + stor7 >= totalSupply
                            totalSupply += stor7
                            stage = 2
                        else:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        stage = 4
                    else:
                        require stage <= 4
                        if stage != 1:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
                        else:
                            if uint32(block.timestamp) > sub_5f5cfcc2:
                                require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor7
                                require totalSupply + stor7 >= totalSupply
                                totalSupply += stor7
                                stage = 2
                            else:
                                require stage <= 4
                                if stage != 2:
                                    require stage <= 4
                                else:
                                    if uint32(block.timestamp) <= sub_f5f72502:
                                        require stage <= 4
                                    else:
                                        require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                        balanceOf[address(this.address)] += stor8
                                        require totalSupply + stor8 >= totalSupply
                                        totalSupply += stor8
                                        stage = 3
    require stage <= 4
    require stage == 4
    require balanceOf[address(msg.sender)] > 0
    require stor12
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] / stor12 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function ownertransfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stage <= 4
    if stage:
        require stage <= 4
        if stage != 1:
            require stage <= 4
            if stage != 1:
                require stage <= 4
                if stage != 2:
                    require stage <= 4
                else:
                    if uint32(block.timestamp) <= sub_f5f72502:
                        require stage <= 4
                    else:
                        require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor8
                        require totalSupply + stor8 >= totalSupply
                        totalSupply += stor8
                        stage = 3
            else:
                if uint32(block.timestamp) > sub_5f5cfcc2:
                    require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] += stor7
                    require totalSupply + stor7 >= totalSupply
                    totalSupply += stor7
                    stage = 2
                else:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
        else:
            if balanceOf[address(this.address)] <= stor9:
                require stage <= 4
                if stage != 1:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor7
                        require totalSupply + stor7 >= totalSupply
                        totalSupply += stor7
                        stage = 2
                    else:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
            else:
                if uint32(block.timestamp) > sub_5f5cfcc2:
                    stage = 4
                else:
                    require stage <= 4
                    if stage != 1:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
                    else:
                        if uint32(block.timestamp) > sub_5f5cfcc2:
                            require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor7
                            require totalSupply + stor7 >= totalSupply
                            totalSupply += stor7
                            stage = 2
                        else:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
    else:
        if uint32(block.timestamp) > sub_47bf07ec:
            require balanceOf[address(this.address)] + stor6 >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += stor6
            require totalSupply + stor6 >= totalSupply
            totalSupply += stor6
            stage = 1
        else:
            require stage <= 4
            if stage != 1:
                require stage <= 4
                if stage != 1:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor7
                        require totalSupply + stor7 >= totalSupply
                        totalSupply += stor7
                        stage = 2
                    else:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
            else:
                if balanceOf[address(this.address)] <= stor9:
                    require stage <= 4
                    if stage != 1:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
                    else:
                        if uint32(block.timestamp) > sub_5f5cfcc2:
                            require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor7
                            require totalSupply + stor7 >= totalSupply
                            totalSupply += stor7
                            stage = 2
                        else:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        stage = 4
                    else:
                        require stage <= 4
                        if stage != 1:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
                        else:
                            if uint32(block.timestamp) > sub_5f5cfcc2:
                                require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor7
                                require totalSupply + stor7 >= totalSupply
                                totalSupply += stor7
                                stage = 2
                            else:
                                require stage <= 4
                                if stage != 2:
                                    require stage <= 4
                                else:
                                    if uint32(block.timestamp) <= sub_f5f72502:
                                        require stage <= 4
                                    else:
                                        require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                        balanceOf[address(this.address)] += stor8
                                        require totalSupply + stor8 >= totalSupply
                                        totalSupply += stor8
                                        stage = 3
    require stage <= 4
    if stage != 2:
        require stage <= 4
        require stage == 3
    require eth.balance(this.address) > 0
    if arg2 <= eth.balance(this.address):
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    if msg.sender:
        require ext_code.size(msg.sender) <= 0
    require stage <= 4
    if stage:
        require stage <= 4
        if stage != 1:
            require stage <= 4
            if stage != 1:
                require stage <= 4
                if stage != 2:
                    require stage <= 4
                else:
                    if uint32(block.timestamp) <= sub_f5f72502:
                        require stage <= 4
                    else:
                        require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor8
                        require totalSupply + stor8 >= totalSupply
                        totalSupply += stor8
                        stage = 3
            else:
                if uint32(block.timestamp) > sub_5f5cfcc2:
                    require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] += stor7
                    require totalSupply + stor7 >= totalSupply
                    totalSupply += stor7
                    stage = 2
                else:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
        else:
            if balanceOf[address(this.address)] <= stor9:
                require stage <= 4
                if stage != 1:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor7
                        require totalSupply + stor7 >= totalSupply
                        totalSupply += stor7
                        stage = 2
                    else:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
            else:
                if uint32(block.timestamp) > sub_5f5cfcc2:
                    stage = 4
                else:
                    require stage <= 4
                    if stage != 1:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
                    else:
                        if uint32(block.timestamp) > sub_5f5cfcc2:
                            require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor7
                            require totalSupply + stor7 >= totalSupply
                            totalSupply += stor7
                            stage = 2
                        else:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
    else:
        if uint32(block.timestamp) > sub_47bf07ec:
            require balanceOf[address(this.address)] + stor6 >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += stor6
            require totalSupply + stor6 >= totalSupply
            totalSupply += stor6
            stage = 1
        else:
            require stage <= 4
            if stage != 1:
                require stage <= 4
                if stage != 1:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                    else:
                        if uint32(block.timestamp) <= sub_f5f72502:
                            require stage <= 4
                        else:
                            require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor8
                            require totalSupply + stor8 >= totalSupply
                            totalSupply += stor8
                            stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += stor7
                        require totalSupply + stor7 >= totalSupply
                        totalSupply += stor7
                        stage = 2
                    else:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
            else:
                if balanceOf[address(this.address)] <= stor9:
                    require stage <= 4
                    if stage != 1:
                        require stage <= 4
                        if stage != 2:
                            require stage <= 4
                        else:
                            if uint32(block.timestamp) <= sub_f5f72502:
                                require stage <= 4
                            else:
                                require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor8
                                require totalSupply + stor8 >= totalSupply
                                totalSupply += stor8
                                stage = 3
                    else:
                        if uint32(block.timestamp) > sub_5f5cfcc2:
                            require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += stor7
                            require totalSupply + stor7 >= totalSupply
                            totalSupply += stor7
                            stage = 2
                        else:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
                else:
                    if uint32(block.timestamp) > sub_5f5cfcc2:
                        stage = 4
                    else:
                        require stage <= 4
                        if stage != 1:
                            require stage <= 4
                            if stage != 2:
                                require stage <= 4
                            else:
                                if uint32(block.timestamp) <= sub_f5f72502:
                                    require stage <= 4
                                else:
                                    require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] += stor8
                                    require totalSupply + stor8 >= totalSupply
                                    totalSupply += stor8
                                    stage = 3
                        else:
                            if uint32(block.timestamp) > sub_5f5cfcc2:
                                require balanceOf[address(this.address)] + stor7 >= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += stor7
                                require totalSupply + stor7 >= totalSupply
                                totalSupply += stor7
                                stage = 2
                            else:
                                require stage <= 4
                                if stage != 2:
                                    require stage <= 4
                                else:
                                    if uint32(block.timestamp) <= sub_f5f72502:
                                        require stage <= 4
                                    else:
                                        require balanceOf[address(this.address)] + stor8 >= balanceOf[address(this.address)]
                                        balanceOf[address(this.address)] += stor8
                                        require totalSupply + stor8 >= totalSupply
                                        totalSupply += stor8
                                        stage = 3
    require balanceOf[address(this.address)] > 0
    require msg.value >= 10^16
    require stage <= 4
    if stage == 1:
        require stor12 > 0
        if not msg.value:
            if 0 <= balanceOf[address(this.address)]:
                require balanceOf[address(this.address)] >= 0
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                emit Transfer(0, this.address, msg.sender);
            else:
                require 0 >= balanceOf[address(this.address)]
                require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = 0
                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                if -balanceOf[address(this.address)] > 0:
                    require stor12
                    call msg.sender with:
                       value -balanceOf[address(this.address)] / stor12 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            require msg.value
            require msg.value * stor12 / msg.value == stor12
            if msg.value * stor12 <= balanceOf[address(this.address)]:
                require balanceOf[address(this.address)] >= msg.value * stor12
                balanceOf[address(this.address)] += -1 * msg.value * stor12
                require balanceOf[address(msg.sender)] + (msg.value * stor12) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * stor12
                emit Transfer((msg.value * stor12), this.address, msg.sender);
            else:
                require msg.value * stor12 >= balanceOf[address(this.address)]
                require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = 0
                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                if (msg.value * stor12) - balanceOf[address(this.address)] > 0:
                    require stor12
                    call msg.sender with:
                       value (msg.value * stor12) - balanceOf[address(this.address)] / stor12 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        require stage <= 4
        if stage == 2:
            require stor13 > 0
            if not msg.value:
                if 0 <= balanceOf[address(this.address)]:
                    require balanceOf[address(this.address)] >= 0
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Transfer(0, this.address, msg.sender);
                else:
                    require 0 >= balanceOf[address(this.address)]
                    require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    if -balanceOf[address(this.address)] > 0:
                        require stor13
                        call msg.sender with:
                           value -balanceOf[address(this.address)] / stor13 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                require msg.value
                require msg.value * stor13 / msg.value == stor13
                if msg.value * stor13 <= balanceOf[address(this.address)]:
                    require balanceOf[address(this.address)] >= msg.value * stor13
                    balanceOf[address(this.address)] += -1 * msg.value * stor13
                    require balanceOf[address(msg.sender)] + (msg.value * stor13) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * stor13
                    emit Transfer((msg.value * stor13), this.address, msg.sender);
                else:
                    require msg.value * stor13 >= balanceOf[address(this.address)]
                    require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    if (msg.value * stor13) - balanceOf[address(this.address)] > 0:
                        require stor13
                        call msg.sender with:
                           value (msg.value * stor13) - balanceOf[address(this.address)] / stor13 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
        else:
            require stage <= 4
            require stage == 3
            require stor14 > 0
            if not msg.value:
                if 0 <= balanceOf[address(this.address)]:
                    require balanceOf[address(this.address)] >= 0
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Transfer(0, this.address, msg.sender);
                else:
                    require 0 >= balanceOf[address(this.address)]
                    require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    if -balanceOf[address(this.address)] > 0:
                        require stor14
                        call msg.sender with:
                           value -balanceOf[address(this.address)] / stor14 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                require msg.value
                require msg.value * stor14 / msg.value == stor14
                if msg.value * stor14 <= balanceOf[address(this.address)]:
                    require balanceOf[address(this.address)] >= msg.value * stor14
                    balanceOf[address(this.address)] += -1 * msg.value * stor14
                    require balanceOf[address(msg.sender)] + (msg.value * stor14) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * stor14
                    emit Transfer((msg.value * stor14), this.address, msg.sender);
                else:
                    require msg.value * stor14 >= balanceOf[address(this.address)]
                    require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    if (msg.value * stor14) - balanceOf[address(this.address)] > 0:
                        require stor14
                        call msg.sender with:
                           value (msg.value * stor14) - balanceOf[address(this.address)] / stor14 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}



}
