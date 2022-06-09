contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1)
#  - buy(address arg1, uint256 arg2)
#  - buy(uint256 arg1)
#
mapping of uint8 stor0;
uint8 stor1;
address sub_6e5ec052Address; offset 8
address sub_4ae19bb7Address;
address sub_5000596bAddress;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint8 stor7; offset 24
uint8 stor7; offset 32
uint8 stor7; offset 40
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint8 stor12; offset 24
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16
uint8 stor13; offset 24
uint8 stor13; offset 32
mapping of struct rounds;
mapping of address sub_a5b97a7f;
mapping of struct bets;
mapping of struct stor17;
address fundAccount;
address sub_ffff558bAddress;
uint256 currentRoundId;

function sub_4ae19bb7(?) {
    return sub_4ae19bb7Address
}

function sub_5000596b(?) {
    return sub_5000596bAddress
}

function paused() {
    return bool(stor1)
}

function bets(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return bets[arg1][arg2].field_0, bets[arg1][arg2].field_256, bets[arg1][arg2].field_512
}

function sub_6e5ec052(?) {
    return sub_6e5ec052Address
}

function rounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rounds[arg1].field_0, 
           rounds[arg1].field_256,
           rounds[arg1].field_512,
           rounds[arg1].field_768,
           rounds[arg1].field_1024,
           rounds[arg1].field_1280,
           rounds[arg1].field_1536,
           rounds[arg1].field_1792,
           rounds[arg1].field_2048,
           rounds[arg1].field_2304,
           rounds[arg1].field_2560,
           bool(rounds[arg1].field_2720)
}

function currentRoundId() {
    return currentRoundId
}

function sub_a5b97a7f(?) {
    require calldata.size - 4 >= 64
    return sub_a5b97a7f[arg1][arg2]
}

function fundAccount() {
    return fundAccount
}

function isManager(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid address.'
    return bool(stor0[address(arg1)])
}

function sub_ffff558b(?) {
    return sub_ffff558bAddress
}

function _fallback() payable {
  stop
}

function sub_1f8404f7(?) {
    return uint8(stor13.field_0), uint8(stor13.field_0), uint8(stor13.field_0), uint8(stor13.field_0), uint8(stor13.field_32)
}

function sub_468c4539(?) {
    return stor8, 
           stor9,
           stor10,
           stor11,
           uint8(stor12.field_0),
           uint8(stor12.field_0),
           uint8(stor12.field_0),
           uint8(stor12.field_24)
}

function sub_104f1f66(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    sub_6e5ec052Address = arg1
}

function sub_c30342d9(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    sub_ffff558bAddress = arg1
}

function sub_ef5e87d6(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    sub_4ae19bb7Address = arg1
}

function setFundAccount(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    fundAccount = arg1
}

function setUserContract(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    sub_5000596bAddress = arg1
}

function pause() {
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if stor1:
        revert with 0, 'The contract is not paused.'
    stor1 = 1
    emit Paused(msg.sender);
}

function sub_9a8de65e(?) {
    return stor4, 
           stor5,
           stor6,
           uint8(stor7.field_0),
           uint8(stor7.field_8),
           uint8(stor7.field_0),
           uint8(stor7.field_0),
           uint8(stor7.field_0),
           uint8(stor7.field_40)
}

function unpause() {
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if not stor1:
        revert with 0, 'The contract is paused.'
    stor1 = 0
    emit Unpaused(msg.sender);
}

function sub_f268a9c8(?) {
    require calldata.size - 4 >= 160
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    uint8(stor13.field_0) = arg1
    uint8(stor13.field_8) = arg2
    uint8(stor13.field_16) = arg3
    uint8(stor13.field_24) = arg4
    uint8(stor13.field_32) = arg5
}

function sub_22bb6492(?) {
    require calldata.size - 4 >= 256
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    stor8 = arg1
    stor9 = arg2
    stor10 = arg3
    stor11 = arg4
    uint8(stor12.field_0) = arg5
    uint8(stor12.field_8) = arg6
    uint8(stor12.field_16) = arg7
    uint8(stor12.field_24) = arg8
}

function addManager(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if not arg1:
        revert with 0, 'Invalid address.'
    if stor0[address(arg1)]:
        revert with 0, 'The account already exists.'
    stor0[address(arg1)] = 1
    emit ManagerAdded(arg1);
}

function removeManager(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if not arg1:
        revert with 0, 'Invalid address.'
    if not stor0[address(arg1)]:
        revert with 0, 'The account does not exist.'
    stor0[address(arg1)] = 0
    emit ManagerRemoved(arg1);
}

function sub_1039e9b8(?) {
    require calldata.size - 4 >= 288
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    stor4 = arg1
    stor5 = arg2
    stor6 = arg3
    uint8(stor7.field_0) = arg4
    uint8(stor7.field_8) = arg5
    uint8(stor7.field_16) = arg6
    uint8(stor7.field_24) = arg7
    uint8(stor7.field_32) = arg8
    uint8(stor7.field_40) = arg9
}

function sub_1115366c(?) {
    require calldata.size - 4 >= 256
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    stor17[address(arg1)].field_0 = arg2
    stor17[address(arg1)].field_256 = arg3
    stor17[address(arg1)].field_512 = arg4
    stor17[address(arg1)].field_768 = arg5
    stor17[address(arg1)].field_1024 = arg6
    stor17[address(arg1)].field_1280 = arg7
    stor17[address(arg1)].field_1536 = arg8
}

function price() {
    if not stor5:
        if stor4 < stor4:
            revert with 0, 'SafeMath add failed.'
        if stor4 > stor6:
            return stor6
        return stor4
    require stor5
    if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
        revert with 0, 'SafeMath mul failed.'
    if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
        revert with 0, 'SafeMath add failed.'
    if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
        return stor6
    return (stor4 + (stor5 * rounds[stor20].field_0))
}

function start(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    currentRoundId = arg1
    rounds[stor20].field_0 = arg2
    rounds[stor20].field_256 = arg3
    rounds[stor20].field_512 = arg4
    rounds[stor20].field_768 = arg5
    rounds[stor20].field_1024 = arg6
    if block.timestamp + stor8 < block.timestamp:
        revert with 0, 'SafeMath add failed.'
    rounds[stor20].field_1280 = block.timestamp + stor8
    if rounds[stor20].field_1280 + stor10 < rounds[stor20].field_1280:
        revert with 0, 'SafeMath add failed.'
    rounds[stor20].field_1536 = rounds[stor20].field_1280 + stor10
    emit Started(currentRoundId);
}

function players(address arg1) {
    require calldata.size - 4 >= 32
    if not rounds[stor17[address(arg1)].field_0].field_1024:
        if 0 < stor17[address(arg1)].field_768:
            return stor17[address(arg1)].field_0, 
                   stor17[address(arg1)].field_256,
                   stor17[address(arg1)].field_512,
                   stor17[address(arg1)].field_768,
                   0,
                   stor17[address(arg1)].field_1024,
                   stor17[address(arg1)].field_1280,
                   stor17[address(arg1)].field_1536
        if stor17[address(arg1)].field_768 > 0:
            revert with 0, 'SafeMath sub failed.'
        return stor17[address(arg1)].field_0, 
               stor17[address(arg1)].field_256,
               stor17[address(arg1)].field_512,
               stor17[address(arg1)].field_768,
               -stor17[address(arg1)].field_768,
               stor17[address(arg1)].field_1024,
               stor17[address(arg1)].field_1280,
               stor17[address(arg1)].field_1536
    require rounds[stor17[address(arg1)].field_0].field_1024
    if rounds[stor17[address(arg1)].field_0].field_1024 * stor17[address(arg1)].field_512 / rounds[stor17[address(arg1)].field_0].field_1024 != stor17[address(arg1)].field_512:
        revert with 0, 'SafeMath mul failed.'
    if rounds[stor17[address(arg1)].field_0].field_1024 * stor17[address(arg1)].field_512 / 10^18 < stor17[address(arg1)].field_768:
        return stor17[address(arg1)].field_0, 
               stor17[address(arg1)].field_256,
               stor17[address(arg1)].field_512,
               stor17[address(arg1)].field_768,
               0,
               stor17[address(arg1)].field_1024,
               stor17[address(arg1)].field_1280,
               stor17[address(arg1)].field_1536
    if stor17[address(arg1)].field_768 > rounds[stor17[address(arg1)].field_0].field_1024 * stor17[address(arg1)].field_512 / 10^18:
        revert with 0, 'SafeMath sub failed.'
    return stor17[address(arg1)].field_0, 
           stor17[address(arg1)].field_256,
           stor17[address(arg1)].field_512,
           stor17[address(arg1)].field_768,
           (rounds[stor17[address(arg1)].field_0].field_1024 * stor17[address(arg1)].field_512 / 10^18) - stor17[address(arg1)].field_768,
           stor17[address(arg1)].field_1024,
           stor17[address(arg1)].field_1280,
           stor17[address(arg1)].field_1536
}

function withdraw() {
    if stor1:
        revert with 0, 'The contract is not paused.'
    if ext_code.size(msg.sender):
        revert with 0, 'Sorry humans only.'
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if stor0[address(msg.sender)]:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not rounds[stor17[address(msg.sender)].field_0].field_1024:
        if 0 < stor17[address(msg.sender)].field_768:
            if stor17[address(msg.sender)].field_1024 > 0:
                stor17[address(msg.sender)].field_1024 = 0
            if stor17[address(msg.sender)].field_1024 < 0:
                revert with 0, 'SafeMath add failed.'
            require ext_code.size(sub_6e5ec052Address)
            call sub_6e5ec052Address.0xbeabacc8 with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, stor17[address(msg.sender)].field_1024
        else:
            if stor17[address(msg.sender)].field_768 > 0:
                revert with 0, 'SafeMath sub failed.'
            if -stor17[address(msg.sender)].field_768 <= 0:
                if stor17[address(msg.sender)].field_1024 > 0:
                    stor17[address(msg.sender)].field_1024 = 0
                if -stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024 < -stor17[address(msg.sender)].field_768:
                    revert with 0, 'SafeMath add failed.'
                require ext_code.size(sub_6e5ec052Address)
                call sub_6e5ec052Address.0xbeabacc8 with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, -stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024
            else:
                if stor17[address(msg.sender)].field_1536 > 0:
                    if -stor17[address(msg.sender)].field_768 > stor17[address(msg.sender)].field_1536:
                        revert with 0, 'SafeMath sub failed.'
                    stor17[address(msg.sender)].field_1536 += stor17[address(msg.sender)].field_768
                    if 0 < stor17[address(msg.sender)].field_768:
                        revert with 0, 'SafeMath add failed.'
                    stor17[address(msg.sender)].field_768 = 0
                    if stor17[address(msg.sender)].field_1024 > 0:
                        stor17[address(msg.sender)].field_1024 = 0
                    if -stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024 < -stor17[address(msg.sender)].field_768:
                        revert with 0, 'SafeMath add failed.'
                    require ext_code.size(sub_6e5ec052Address)
                    call sub_6e5ec052Address.0xbeabacc8 with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, -stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024
                else:
                    if not stor17[address(msg.sender)].field_256:
                        if stor17[address(msg.sender)].field_1280 - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_1280:
                            revert with 0, 'SafeMath add failed.'
                        if stor17[address(msg.sender)].field_1280 - stor17[address(msg.sender)].field_768 < 0:
                            if stor17[address(msg.sender)].field_1280 - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            stor17[address(msg.sender)].field_1280 -= stor17[address(msg.sender)].field_768
                            if not stor5:
                                if stor4 < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if 0 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        stor17[address(msg.sender)].field_768 = 0
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if 0 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = -(stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4
                                    if stor4 * uint8(stor12.field_24) / stor4 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor4 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor4 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if 0 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)):
                                        stor17[address(msg.sender)].field_768 = 0
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if 0 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = -(stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)
                            else:
                                require stor5
                                if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
                                    revert with 0, 'SafeMath mul failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if 0 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        stor17[address(msg.sender)].field_768 = 0
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if 0 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = -(stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4 + (stor5 * rounds[stor20].field_0):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 + (stor5 * rounds[stor20].field_0)
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) / stor4 + (stor5 * rounds[stor20].field_0) != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)):
                                        revert with 0, 'SafeMath mod failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if 0 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))):
                                        stor17[address(msg.sender)].field_768 = 0
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if 0 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = -(stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                            if stor17[address(msg.sender)].field_1024 > 0:
                                stor17[address(msg.sender)].field_1024 = 0
                            if -stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024 < -stor17[address(msg.sender)].field_768:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_6e5ec052Address)
                            call sub_6e5ec052Address.0xbeabacc8 with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, -stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024
                        else:
                            if stor17[address(msg.sender)].field_1280 > 0:
                                revert with 0, 'SafeMath sub failed.'
                            if 0 < stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            stor17[address(msg.sender)].field_1280 = 0
                            if not stor5:
                                if stor4 < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 -= stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4
                                    if stor4 * uint8(stor12.field_24) / stor4 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor4 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor4 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 -= stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)
                            else:
                                require stor5
                                if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
                                    revert with 0, 'SafeMath mul failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 -= stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4 + (stor5 * rounds[stor20].field_0):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 + (stor5 * rounds[stor20].field_0)
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) / stor4 + (stor5 * rounds[stor20].field_0) != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)):
                                        revert with 0, 'SafeMath mod failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))):
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 -= stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                            if stor17[address(msg.sender)].field_1024 > 0:
                                stor17[address(msg.sender)].field_1024 = 0
                            if -stor17[address(msg.sender)].field_1280 + stor17[address(msg.sender)].field_1024 < -stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_6e5ec052Address)
                            call sub_6e5ec052Address.0xbeabacc8 with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, -stor17[address(msg.sender)].field_1280 + stor17[address(msg.sender)].field_1024
                    else:
                        require stor17[address(msg.sender)].field_256
                        if stor17[address(msg.sender)].field_256 * uint8(stor12.field_24) / stor17[address(msg.sender)].field_256 != uint8(stor12.field_24):
                            revert with 0, 'SafeMath mul failed.'
                        if stor17[address(msg.sender)].field_1280 - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_1280:
                            revert with 0, 'SafeMath add failed.'
                        if stor17[address(msg.sender)].field_1280 - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                            if stor17[address(msg.sender)].field_1280 - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            stor17[address(msg.sender)].field_1280 -= stor17[address(msg.sender)].field_768
                            if not stor5:
                                if stor4 < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if 0 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        stor17[address(msg.sender)].field_768 = 0
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if 0 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = -(stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4
                                    if stor4 * uint8(stor12.field_24) / stor4 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor4 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor4 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if 0 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)):
                                        stor17[address(msg.sender)].field_768 = 0
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if 0 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = -(stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)
                            else:
                                require stor5
                                if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
                                    revert with 0, 'SafeMath mul failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if 0 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        stor17[address(msg.sender)].field_768 = 0
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if 0 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = -(stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4 + (stor5 * rounds[stor20].field_0):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 + (stor5 * rounds[stor20].field_0)
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) / stor4 + (stor5 * rounds[stor20].field_0) != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)):
                                        revert with 0, 'SafeMath mod failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if 0 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))):
                                        stor17[address(msg.sender)].field_768 = 0
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if 0 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = -(stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                            if stor17[address(msg.sender)].field_1024 > 0:
                                stor17[address(msg.sender)].field_1024 = 0
                            if -stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024 < -stor17[address(msg.sender)].field_768:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_6e5ec052Address)
                            call sub_6e5ec052Address.0xbeabacc8 with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, -stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024
                        else:
                            if stor17[address(msg.sender)].field_1280 > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                revert with 0, 'SafeMath sub failed.'
                            if stor17[address(msg.sender)].field_256 * uint8(stor12.field_24) < stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            stor17[address(msg.sender)].field_1280 = stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)
                            if not stor5:
                                if stor4 < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4
                                    if stor4 * uint8(stor12.field_24) / stor4 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor4 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor4 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)
                            else:
                                require stor5
                                if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
                                    revert with 0, 'SafeMath mul failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4 + (stor5 * rounds[stor20].field_0):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 + (stor5 * rounds[stor20].field_0)
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) / stor4 + (stor5 * rounds[stor20].field_0) != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)):
                                        revert with 0, 'SafeMath mod failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))):
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                            if stor17[address(msg.sender)].field_1024 > 0:
                                stor17[address(msg.sender)].field_1024 = 0
                            if stor17[address(msg.sender)].field_1024 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_6e5ec052Address)
                            call sub_6e5ec052Address.0xbeabacc8 with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + stor17[address(msg.sender)].field_1024
    else:
        require rounds[stor17[address(msg.sender)].field_0].field_1024
        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / rounds[stor17[address(msg.sender)].field_0].field_1024 != stor17[address(msg.sender)].field_512:
            revert with 0, 'SafeMath mul failed.'
        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
            if stor17[address(msg.sender)].field_1024 > 0:
                stor17[address(msg.sender)].field_1024 = 0
            if stor17[address(msg.sender)].field_1024 < 0:
                revert with 0, 'SafeMath add failed.'
            require ext_code.size(sub_6e5ec052Address)
            call sub_6e5ec052Address.0xbeabacc8 with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, stor17[address(msg.sender)].field_1024
        else:
            if stor17[address(msg.sender)].field_768 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                revert with 0, 'SafeMath sub failed.'
            if (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 <= 0:
                if stor17[address(msg.sender)].field_1024 > 0:
                    stor17[address(msg.sender)].field_1024 = 0
                if stor17[address(msg.sender)].field_1024 < 0:
                    revert with 0, 'SafeMath add failed.'
                require ext_code.size(sub_6e5ec052Address)
                call sub_6e5ec052Address.0xbeabacc8 with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024
            else:
                if stor17[address(msg.sender)].field_1536 > 0:
                    if (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 > stor17[address(msg.sender)].field_1536:
                        revert with 0, 'SafeMath sub failed.'
                    stor17[address(msg.sender)].field_1536 = stor17[address(msg.sender)].field_1536 - (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) + stor17[address(msg.sender)].field_768
                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                        revert with 0, 'SafeMath add failed.'
                    stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                    if stor17[address(msg.sender)].field_1024 > 0:
                        stor17[address(msg.sender)].field_1024 = 0
                    if stor17[address(msg.sender)].field_1024 < 0:
                        revert with 0, 'SafeMath add failed.'
                    require ext_code.size(sub_6e5ec052Address)
                    call sub_6e5ec052Address.0xbeabacc8 with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024
                else:
                    if not stor17[address(msg.sender)].field_256:
                        if stor17[address(msg.sender)].field_1280 + (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_1280:
                            revert with 0, 'SafeMath add failed.'
                        if stor17[address(msg.sender)].field_1280 + (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 < 0:
                            if stor17[address(msg.sender)].field_1280 + (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            stor17[address(msg.sender)].field_1280 = stor17[address(msg.sender)].field_1280 + (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768
                            if not stor5:
                                if stor4 < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4
                                    if stor4 * uint8(stor12.field_24) / stor4 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor4 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor4 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)):
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)
                            else:
                                require stor5
                                if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
                                    revert with 0, 'SafeMath mul failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4 + (stor5 * rounds[stor20].field_0):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 + (stor5 * rounds[stor20].field_0)
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) / stor4 + (stor5 * rounds[stor20].field_0) != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)):
                                        revert with 0, 'SafeMath mod failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))):
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                            if stor17[address(msg.sender)].field_1024 > 0:
                                stor17[address(msg.sender)].field_1024 = 0
                            if stor17[address(msg.sender)].field_1024 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_6e5ec052Address)
                            call sub_6e5ec052Address.0xbeabacc8 with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024
                        else:
                            if stor17[address(msg.sender)].field_1280 > 0:
                                revert with 0, 'SafeMath sub failed.'
                            if 0 < stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            stor17[address(msg.sender)].field_1280 = 0
                            if not stor5:
                                if stor4 < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 -= stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4
                                    if stor4 * uint8(stor12.field_24) / stor4 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor4 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor4 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 -= stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)
                            else:
                                require stor5
                                if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
                                    revert with 0, 'SafeMath mul failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 -= stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4 + (stor5 * rounds[stor20].field_0):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 + (stor5 * rounds[stor20].field_0)
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) / stor4 + (stor5 * rounds[stor20].field_0) != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)):
                                        revert with 0, 'SafeMath mod failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))):
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 -= stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + (-stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                    stor17[address(msg.sender)].field_512 = -stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                            if stor17[address(msg.sender)].field_1024 > 0:
                                stor17[address(msg.sender)].field_1024 = 0
                            if -stor17[address(msg.sender)].field_1280 + stor17[address(msg.sender)].field_1024 < -stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_6e5ec052Address)
                            call sub_6e5ec052Address.0xbeabacc8 with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, -stor17[address(msg.sender)].field_1280 + stor17[address(msg.sender)].field_1024
                    else:
                        require stor17[address(msg.sender)].field_256
                        if stor17[address(msg.sender)].field_256 * uint8(stor12.field_24) / stor17[address(msg.sender)].field_256 != uint8(stor12.field_24):
                            revert with 0, 'SafeMath mul failed.'
                        if stor17[address(msg.sender)].field_1280 + (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_1280:
                            revert with 0, 'SafeMath add failed.'
                        if stor17[address(msg.sender)].field_1280 + (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                            if stor17[address(msg.sender)].field_1280 + (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 < stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            stor17[address(msg.sender)].field_1280 = stor17[address(msg.sender)].field_1280 + (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768
                            if not stor5:
                                if stor4 < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4
                                    if stor4 * uint8(stor12.field_24) / stor4 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor4 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor4 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)):
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)
                            else:
                                require stor5
                                if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
                                    revert with 0, 'SafeMath mul failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4 + (stor5 * rounds[stor20].field_0):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 + (stor5 * rounds[stor20].field_0)
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) / stor4 + (stor5 * rounds[stor20].field_0) != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)):
                                        revert with 0, 'SafeMath mod failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))):
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                            if stor17[address(msg.sender)].field_1024 > 0:
                                stor17[address(msg.sender)].field_1024 = 0
                            if stor17[address(msg.sender)].field_1024 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_6e5ec052Address)
                            call sub_6e5ec052Address.0xbeabacc8 with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (rounds[stor17[address(msg.sender)].field_0].field_1024 * stor17[address(msg.sender)].field_512 / 10^18) - stor17[address(msg.sender)].field_768 + stor17[address(msg.sender)].field_1024
                        else:
                            if stor17[address(msg.sender)].field_1280 > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                revert with 0, 'SafeMath sub failed.'
                            if stor17[address(msg.sender)].field_256 * uint8(stor12.field_24) < stor17[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath add failed.'
                            stor17[address(msg.sender)].field_1280 = stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)
                            if not stor5:
                                if stor4 < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4
                                    if stor4 * uint8(stor12.field_24) / stor4 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor4 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor4 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor4 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor4 * uint8(stor12.field_24)) / stor4 * uint8(stor12.field_24)
                            else:
                                require stor5
                                if stor5 * rounds[stor20].field_0 / stor5 != rounds[stor20].field_0:
                                    revert with 0, 'SafeMath mul failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) < stor4:
                                    revert with 0, 'SafeMath add failed.'
                                if stor4 + (stor5 * rounds[stor20].field_0) > stor6:
                                    if not stor6:
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6
                                    if stor6 * uint8(stor12.field_24) / stor6 != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not stor6 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor6 * uint8(stor12.field_24) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor6 * uint8(stor12.field_24)
                                    if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)):
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % stor6 * uint8(stor12.field_24)) / stor6 * uint8(stor12.field_24)
                                else:
                                    if not stor4 + (stor5 * rounds[stor20].field_0):
                                        revert with 0, 'SafeMath mod failed.'
                                    require stor4 + (stor5 * rounds[stor20].field_0)
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) / stor4 + (stor5 * rounds[stor20].field_0) != uint8(stor12.field_24):
                                        revert with 0, 'SafeMath mul failed.'
                                    if not (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)):
                                        revert with 0, 'SafeMath mod failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_1280 - (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > stor17[address(msg.sender)].field_256 * uint8(stor12.field_24):
                                        revert with 0, 'SafeMath sub failed.'
                                    if (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                                    if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < stor17[address(msg.sender)].field_768:
                                        revert with 0, 'SafeMath add failed.'
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if not stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))):
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < 0:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if 0 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280
                                    else:
                                        require stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                        if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) != rounds[stor17[address(msg.sender)].field_0].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                        if stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 < (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18:
                                            stor17[address(msg.sender)].field_768 = 0
                                        else:
                                            if (stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18 > stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280:
                                                revert with 0, 'SafeMath sub failed.'
                                            stor17[address(msg.sender)].field_768 = stor17[address(msg.sender)].field_768 + (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 - ((stor17[address(msg.sender)].field_512 * rounds[stor17[address(msg.sender)].field_0].field_1024) - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) * rounds[stor17[address(msg.sender)].field_0].field_1024) / 10^18)
                                    if (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)) > stor17[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath sub failed.'
                                    if stor17[address(msg.sender)].field_512 - ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) > rounds[stor17[address(msg.sender)].field_0].field_768:
                                        revert with 0, 'SafeMath sub failed.'
                                    rounds[stor17[address(msg.sender)].field_0].field_768 = rounds[stor17[address(msg.sender)].field_0].field_768 - stor17[address(msg.sender)].field_512 + ((stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24)))
                                    stor17[address(msg.sender)].field_512 = (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + (stor17[address(msg.sender)].field_1280 % (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))) / (stor4 * uint8(stor12.field_24)) + (stor5 * rounds[stor20].field_0 * uint8(stor12.field_24))
                            if stor17[address(msg.sender)].field_1024 > 0:
                                stor17[address(msg.sender)].field_1024 = 0
                            if stor17[address(msg.sender)].field_1024 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_6e5ec052Address)
                            call sub_6e5ec052Address.0xbeabacc8 with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (stor17[address(msg.sender)].field_256 * uint8(stor12.field_24)) - stor17[address(msg.sender)].field_1280 + stor17[address(msg.sender)].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
