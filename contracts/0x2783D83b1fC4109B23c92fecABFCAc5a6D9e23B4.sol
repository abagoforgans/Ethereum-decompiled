contract main {




// =====================  Runtime code  =====================


#
#  - transferToLockedBalance(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#
const name = 'ArenaCoin'

const decimals = 8

const symbol = 'ANC'

const INITIAL_SUPPLY = (33215062500 * 3600 * 24 * 3600)


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
mapping of struct stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
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

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSupervisor(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit PrintLog(Array(len=12, data='isSupervisor'), 1, arg1);
    return 1
}

function setLockedWalletEntity(address arg1) {
    if owner != msg.sender:
        require stor5[msg.sender]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit PrintLog(Array(len=20, data='isLockedWalletEntity'), 1, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function removeSupervisor(address arg1) {
    require msg.sender == owner
    require arg1
    require stor5[address(arg1)]
    stor5[address(arg1)] = 0
    emit PrintLog(address arg1, string arg2, uint256 arg3):
                  64,
                  0,
                  12,
                  'isSupervisor',
                  arg1,
    return 1
}

function burn(uint256 arg1) {
    if owner != msg.sender:
        require stor5[msg.sender]
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function removeLockedWalletEntity(address arg1) {
    if owner != msg.sender:
        require stor5[msg.sender]
    require arg1
    require stor6[address(arg1)]
    stor6[address(arg1)] = 0
    emit PrintLog(address arg1, string arg2, uint256 arg3):
                  64,
                  0,
                  20,
                  'isLockedWalletEntity',
                  arg1,
    return 1
}

function getLockedUserInfo(address arg1) {
    if arg1 != msg.sender:
        if owner != msg.sender:
            require stor5[msg.sender]
    return stor4[address(arg1)].field_256, 
           stor4[address(arg1)].field_1024,
           stor4[address(arg1)].field_512,
           stor4[address(arg1)].field_1280,
           stor4[address(arg1)].field_768,
           stor4[address(arg1)].field_1536
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setLockTime(address arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require stor5[msg.sender]
    require arg1
    require arg2 > 0
    require arg2 < 4
    require arg3 > block.timestamp
    if arg1 != msg.sender:
        if owner != msg.sender:
            require stor5[msg.sender]
    if arg2 != 1:
        if arg2 != 2:
            if arg2 != 3:
                return 0
            if not stor4[address(arg1)].field_768:
                return 0
            if arg3 <= stor4[address(arg1)].field_512:
                return 0
            stor4[address(arg1)].field_768 = arg3
        else:
            if not stor4[address(arg1)].field_512:
                if arg2 != 3:
                    return 0
                if not stor4[address(arg1)].field_768:
                    return 0
                if arg3 <= stor4[address(arg1)].field_512:
                    return 0
                stor4[address(arg1)].field_768 = arg3
            else:
                if arg3 <= stor4[address(arg1)].field_256:
                    return 0
                if stor4[address(arg1)].field_768:
                    if arg3 >= stor4[address(arg1)].field_768:
                        return 0
                stor4[address(arg1)].field_512 = arg3
    else:
        if stor4[address(arg1)].field_256:
            if stor4[address(arg1)].field_512:
                if arg3 >= stor4[address(arg1)].field_512:
                    return 0
            stor4[address(arg1)].field_256 = arg3
        else:
            if arg2 != 2:
                if arg2 != 3:
                    return 0
                if not stor4[address(arg1)].field_768:
                    return 0
                if arg3 <= stor4[address(arg1)].field_512:
                    return 0
                stor4[address(arg1)].field_768 = arg3
            else:
                if not stor4[address(arg1)].field_512:
                    if arg2 != 3:
                        return 0
                    if not stor4[address(arg1)].field_768:
                        return 0
                    if arg3 <= stor4[address(arg1)].field_512:
                        return 0
                    stor4[address(arg1)].field_768 = arg3
                else:
                    if arg3 <= stor4[address(arg1)].field_256:
                        return 0
                    if stor4[address(arg1)].field_768:
                        if arg3 >= stor4[address(arg1)].field_768:
                            return 0
                    stor4[address(arg1)].field_512 = arg3
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require not stor6[address(msg.sender)]
    if arg1 == msg.sender:
        revert with 0, 'Check your address!!'
    if not stor4[address(msg.sender)].field_0:
        emit PrintLog(Array(len=20, data='availableResultValue'), arg2, arg1);
    else:
        if msg.sender != msg.sender:
            if owner != msg.sender:
                require stor5[msg.sender]
        if block.timestamp < stor4[address(msg.sender)].field_256:
            require stor4[address(msg.sender)].field_1280 + stor4[address(msg.sender)].field_1024 >= stor4[address(msg.sender)].field_1024
            require stor4[address(msg.sender)].field_1536 >= 0
            require stor4[address(msg.sender)].field_1536 + stor4[address(msg.sender)].field_1280 + stor4[address(msg.sender)].field_1024 <= balanceOf[address(msg.sender)]
            if arg2 > balanceOf[address(msg.sender)] - stor4[address(msg.sender)].field_1536 - stor4[address(msg.sender)].field_1280 - stor4[address(msg.sender)].field_1024:
                emit PrintLog(address arg1, string arg2, uint256 arg3):
                              64,
                              0,
                              20,
                              'availableResultValue',
                              arg1,
                revert
            emit PrintLog(Array(len=20, data='availableResultValue'), arg2, arg1);
        else:
            if stor4[address(msg.sender)].field_256 > block.timestamp:
                if not stor4[address(msg.sender)].field_512:
                    if not stor4[address(msg.sender)].field_768:
                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                      64,
                                      0,
                                      20,
                                      'availableResultValue',
                                      arg1,
                        revert
                    if stor4[address(msg.sender)].field_768 > block.timestamp:
                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                      64,
                                      0,
                                      20,
                                      'availableResultValue',
                                      arg1,
                        revert
                    if arg2 > balanceOf[address(msg.sender)]:
                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                      64,
                                      0,
                                      20,
                                      'availableResultValue',
                                      arg1,
                        revert
                    stor4[address(msg.sender)].field_0 = 0
                    stor4[address(msg.sender)].field_256 = 0
                    stor4[address(msg.sender)].field_512 = 0
                    stor4[address(msg.sender)].field_768 = 0
                    stor4[address(msg.sender)].field_1024 = 0
                    stor4[address(msg.sender)].field_1280 = 0
                    stor4[address(msg.sender)].field_1536 = 0
                    emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                  3,
                                  arg2,
                                  20,
                                  'availableResultValue',
                                  arg1,
                else:
                    if stor4[address(msg.sender)].field_512 > block.timestamp:
                        if not stor4[address(msg.sender)].field_768:
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          64,
                                          0,
                                          20,
                                          'availableResultValue',
                                          arg1,
                            revert
                        if not stor4[address(msg.sender)].field_512:
                            if stor4[address(msg.sender)].field_768 > block.timestamp:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if arg2 > balanceOf[address(msg.sender)]:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            stor4[address(msg.sender)].field_0 = 0
                            stor4[address(msg.sender)].field_256 = 0
                            stor4[address(msg.sender)].field_512 = 0
                            stor4[address(msg.sender)].field_768 = 0
                            stor4[address(msg.sender)].field_1024 = 0
                            stor4[address(msg.sender)].field_1280 = 0
                            stor4[address(msg.sender)].field_1536 = 0
                            emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          3,
                                          arg2,
                                          20,
                                          'availableResultValue',
                                          arg1,
                        else:
                            if stor4[address(msg.sender)].field_512 > block.timestamp:
                                if stor4[address(msg.sender)].field_768 > block.timestamp:
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  64,
                                                  0,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                    revert
                                if arg2 > balanceOf[address(msg.sender)]:
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  64,
                                                  0,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                    revert
                                stor4[address(msg.sender)].field_0 = 0
                                stor4[address(msg.sender)].field_256 = 0
                                stor4[address(msg.sender)].field_512 = 0
                                stor4[address(msg.sender)].field_768 = 0
                                stor4[address(msg.sender)].field_1024 = 0
                                stor4[address(msg.sender)].field_1280 = 0
                                stor4[address(msg.sender)].field_1536 = 0
                                emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              3,
                                              arg2,
                                              20,
                                              'availableResultValue',
                                              arg1,
                            else:
                                if block.timestamp < stor4[address(msg.sender)].field_768:
                                    require stor4[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                    if arg2 > balanceOf[address(msg.sender)] - stor4[address(msg.sender)].field_1536:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    stor4[address(msg.sender)].field_1024 = 0
                                    stor4[address(msg.sender)].field_1280 = 0
                                    emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  2,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if not stor4[address(msg.sender)].field_768:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if stor4[address(msg.sender)].field_768 > block.timestamp:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    stor4[address(msg.sender)].field_0 = 0
                                    stor4[address(msg.sender)].field_256 = 0
                                    stor4[address(msg.sender)].field_512 = 0
                                    stor4[address(msg.sender)].field_768 = 0
                                    stor4[address(msg.sender)].field_1024 = 0
                                    stor4[address(msg.sender)].field_1280 = 0
                                    stor4[address(msg.sender)].field_1536 = 0
                                    emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  3,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                    else:
                        if not stor4[address(msg.sender)].field_768:
                            if arg2 > balanceOf[address(msg.sender)]:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            stor4[address(msg.sender)].field_0 = 0
                            stor4[address(msg.sender)].field_256 = 0
                            stor4[address(msg.sender)].field_512 = 0
                            stor4[address(msg.sender)].field_768 = 0
                            stor4[address(msg.sender)].field_1024 = 0
                            stor4[address(msg.sender)].field_1280 = 0
                            stor4[address(msg.sender)].field_1536 = 0
                            emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          2,
                                          arg2,
                                          20,
                                          'availableResultValue',
                                          arg1,
                        else:
                            if not stor4[address(msg.sender)].field_768:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if not stor4[address(msg.sender)].field_512:
                                if stor4[address(msg.sender)].field_768 > block.timestamp:
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  64,
                                                  0,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                    revert
                                if arg2 > balanceOf[address(msg.sender)]:
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  64,
                                                  0,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                    revert
                                stor4[address(msg.sender)].field_0 = 0
                                stor4[address(msg.sender)].field_256 = 0
                                stor4[address(msg.sender)].field_512 = 0
                                stor4[address(msg.sender)].field_768 = 0
                                stor4[address(msg.sender)].field_1024 = 0
                                stor4[address(msg.sender)].field_1280 = 0
                                stor4[address(msg.sender)].field_1536 = 0
                                emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              3,
                                              arg2,
                                              20,
                                              'availableResultValue',
                                              arg1,
                            else:
                                if stor4[address(msg.sender)].field_512 > block.timestamp:
                                    if stor4[address(msg.sender)].field_768 > block.timestamp:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    stor4[address(msg.sender)].field_0 = 0
                                    stor4[address(msg.sender)].field_256 = 0
                                    stor4[address(msg.sender)].field_512 = 0
                                    stor4[address(msg.sender)].field_768 = 0
                                    stor4[address(msg.sender)].field_1024 = 0
                                    stor4[address(msg.sender)].field_1280 = 0
                                    stor4[address(msg.sender)].field_1536 = 0
                                    emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  3,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if block.timestamp < stor4[address(msg.sender)].field_768:
                                        require stor4[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                        if arg2 > balanceOf[address(msg.sender)] - stor4[address(msg.sender)].field_1536:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        stor4[address(msg.sender)].field_1024 = 0
                                        stor4[address(msg.sender)].field_1280 = 0
                                        emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      2,
                                                      arg2,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                    else:
                                        if not stor4[address(msg.sender)].field_768:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        if stor4[address(msg.sender)].field_768 > block.timestamp:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        stor4[address(msg.sender)].field_0 = 0
                                        stor4[address(msg.sender)].field_256 = 0
                                        stor4[address(msg.sender)].field_512 = 0
                                        stor4[address(msg.sender)].field_768 = 0
                                        stor4[address(msg.sender)].field_1024 = 0
                                        stor4[address(msg.sender)].field_1280 = 0
                                        stor4[address(msg.sender)].field_1536 = 0
                                        emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      3,
                                                      arg2,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
            else:
                if not stor4[address(msg.sender)].field_512:
                    if arg2 > balanceOf[address(msg.sender)]:
                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                      64,
                                      0,
                                      20,
                                      'availableResultValue',
                                      arg1,
                        revert
                    stor4[address(msg.sender)].field_0 = 0
                    stor4[address(msg.sender)].field_256 = 0
                    stor4[address(msg.sender)].field_512 = 0
                    stor4[address(msg.sender)].field_768 = 0
                    stor4[address(msg.sender)].field_1024 = 0
                    stor4[address(msg.sender)].field_1280 = 0
                    stor4[address(msg.sender)].field_1536 = 0
                    emit 0x98980777: 1, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                  1,
                                  arg2,
                                  20,
                                  'availableResultValue',
                                  arg1,
                else:
                    if stor4[address(msg.sender)].field_256 > block.timestamp:
                        if not stor4[address(msg.sender)].field_512:
                            if not stor4[address(msg.sender)].field_768:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if stor4[address(msg.sender)].field_768 > block.timestamp:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if arg2 > balanceOf[address(msg.sender)]:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            stor4[address(msg.sender)].field_0 = 0
                            stor4[address(msg.sender)].field_256 = 0
                            stor4[address(msg.sender)].field_512 = 0
                            stor4[address(msg.sender)].field_768 = 0
                            stor4[address(msg.sender)].field_1024 = 0
                            stor4[address(msg.sender)].field_1280 = 0
                            stor4[address(msg.sender)].field_1536 = 0
                            emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          3,
                                          arg2,
                                          20,
                                          'availableResultValue',
                                          arg1,
                        else:
                            if stor4[address(msg.sender)].field_512 > block.timestamp:
                                if not stor4[address(msg.sender)].field_768:
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  64,
                                                  0,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                    revert
                                if not stor4[address(msg.sender)].field_512:
                                    if stor4[address(msg.sender)].field_768 > block.timestamp:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    stor4[address(msg.sender)].field_0 = 0
                                    stor4[address(msg.sender)].field_256 = 0
                                    stor4[address(msg.sender)].field_512 = 0
                                    stor4[address(msg.sender)].field_768 = 0
                                    stor4[address(msg.sender)].field_1024 = 0
                                    stor4[address(msg.sender)].field_1280 = 0
                                    stor4[address(msg.sender)].field_1536 = 0
                                    emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  3,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if stor4[address(msg.sender)].field_512 > block.timestamp:
                                        if stor4[address(msg.sender)].field_768 > block.timestamp:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        stor4[address(msg.sender)].field_0 = 0
                                        stor4[address(msg.sender)].field_256 = 0
                                        stor4[address(msg.sender)].field_512 = 0
                                        stor4[address(msg.sender)].field_768 = 0
                                        stor4[address(msg.sender)].field_1024 = 0
                                        stor4[address(msg.sender)].field_1280 = 0
                                        stor4[address(msg.sender)].field_1536 = 0
                                        emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      3,
                                                      arg2,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                    else:
                                        if block.timestamp < stor4[address(msg.sender)].field_768:
                                            require stor4[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                            if arg2 > balanceOf[address(msg.sender)] - stor4[address(msg.sender)].field_1536:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            stor4[address(msg.sender)].field_1024 = 0
                                            stor4[address(msg.sender)].field_1280 = 0
                                            emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          2,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                        else:
                                            if not stor4[address(msg.sender)].field_768:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            stor4[address(msg.sender)].field_0 = 0
                                            stor4[address(msg.sender)].field_256 = 0
                                            stor4[address(msg.sender)].field_512 = 0
                                            stor4[address(msg.sender)].field_768 = 0
                                            stor4[address(msg.sender)].field_1024 = 0
                                            stor4[address(msg.sender)].field_1280 = 0
                                            stor4[address(msg.sender)].field_1536 = 0
                                            emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          3,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                            else:
                                if not stor4[address(msg.sender)].field_768:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    stor4[address(msg.sender)].field_0 = 0
                                    stor4[address(msg.sender)].field_256 = 0
                                    stor4[address(msg.sender)].field_512 = 0
                                    stor4[address(msg.sender)].field_768 = 0
                                    stor4[address(msg.sender)].field_1024 = 0
                                    stor4[address(msg.sender)].field_1280 = 0
                                    stor4[address(msg.sender)].field_1536 = 0
                                    emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  2,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if not stor4[address(msg.sender)].field_768:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if not stor4[address(msg.sender)].field_512:
                                        if stor4[address(msg.sender)].field_768 > block.timestamp:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        stor4[address(msg.sender)].field_0 = 0
                                        stor4[address(msg.sender)].field_256 = 0
                                        stor4[address(msg.sender)].field_512 = 0
                                        stor4[address(msg.sender)].field_768 = 0
                                        stor4[address(msg.sender)].field_1024 = 0
                                        stor4[address(msg.sender)].field_1280 = 0
                                        stor4[address(msg.sender)].field_1536 = 0
                                        emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      3,
                                                      arg2,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                    else:
                                        if stor4[address(msg.sender)].field_512 > block.timestamp:
                                            if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            stor4[address(msg.sender)].field_0 = 0
                                            stor4[address(msg.sender)].field_256 = 0
                                            stor4[address(msg.sender)].field_512 = 0
                                            stor4[address(msg.sender)].field_768 = 0
                                            stor4[address(msg.sender)].field_1024 = 0
                                            stor4[address(msg.sender)].field_1280 = 0
                                            stor4[address(msg.sender)].field_1536 = 0
                                            emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          3,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                        else:
                                            if block.timestamp < stor4[address(msg.sender)].field_768:
                                                require stor4[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                                if arg2 > balanceOf[address(msg.sender)] - stor4[address(msg.sender)].field_1536:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                stor4[address(msg.sender)].field_1024 = 0
                                                stor4[address(msg.sender)].field_1280 = 0
                                                emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              2,
                                                              arg2,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                            else:
                                                if not stor4[address(msg.sender)].field_768:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                stor4[address(msg.sender)].field_0 = 0
                                                stor4[address(msg.sender)].field_256 = 0
                                                stor4[address(msg.sender)].field_512 = 0
                                                stor4[address(msg.sender)].field_768 = 0
                                                stor4[address(msg.sender)].field_1024 = 0
                                                stor4[address(msg.sender)].field_1280 = 0
                                                stor4[address(msg.sender)].field_1536 = 0
                                                emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              3,
                                                              arg2,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                    else:
                        if not stor4[address(msg.sender)].field_512:
                            if not stor4[address(msg.sender)].field_768:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if stor4[address(msg.sender)].field_768 > block.timestamp:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if arg2 > balanceOf[address(msg.sender)]:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            stor4[address(msg.sender)].field_0 = 0
                            stor4[address(msg.sender)].field_256 = 0
                            stor4[address(msg.sender)].field_512 = 0
                            stor4[address(msg.sender)].field_768 = 0
                            stor4[address(msg.sender)].field_1024 = 0
                            stor4[address(msg.sender)].field_1280 = 0
                            stor4[address(msg.sender)].field_1536 = 0
                            emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          3,
                                          arg2,
                                          20,
                                          'availableResultValue',
                                          arg1,
                        else:
                            if block.timestamp < stor4[address(msg.sender)].field_512:
                                require stor4[address(msg.sender)].field_1536 + stor4[address(msg.sender)].field_1280 >= stor4[address(msg.sender)].field_1280
                                require stor4[address(msg.sender)].field_1536 + stor4[address(msg.sender)].field_1280 <= balanceOf[address(msg.sender)]
                                if arg2 > balanceOf[address(msg.sender)] - stor4[address(msg.sender)].field_1536 - stor4[address(msg.sender)].field_1280:
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  64,
                                                  0,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                    revert
                                stor4[address(msg.sender)].field_1024 = 0
                                emit 0x98980777: 1, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              1,
                                              arg2,
                                              20,
                                              'availableResultValue',
                                              arg1,
                            else:
                                if not stor4[address(msg.sender)].field_512:
                                    if not stor4[address(msg.sender)].field_768:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if stor4[address(msg.sender)].field_768 > block.timestamp:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    stor4[address(msg.sender)].field_0 = 0
                                    stor4[address(msg.sender)].field_256 = 0
                                    stor4[address(msg.sender)].field_512 = 0
                                    stor4[address(msg.sender)].field_768 = 0
                                    stor4[address(msg.sender)].field_1024 = 0
                                    stor4[address(msg.sender)].field_1280 = 0
                                    stor4[address(msg.sender)].field_1536 = 0
                                    emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  3,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if stor4[address(msg.sender)].field_512 > block.timestamp:
                                        if not stor4[address(msg.sender)].field_768:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        if not stor4[address(msg.sender)].field_512:
                                            if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            stor4[address(msg.sender)].field_0 = 0
                                            stor4[address(msg.sender)].field_256 = 0
                                            stor4[address(msg.sender)].field_512 = 0
                                            stor4[address(msg.sender)].field_768 = 0
                                            stor4[address(msg.sender)].field_1024 = 0
                                            stor4[address(msg.sender)].field_1280 = 0
                                            stor4[address(msg.sender)].field_1536 = 0
                                            emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          3,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                        else:
                                            if stor4[address(msg.sender)].field_512 > block.timestamp:
                                                if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                stor4[address(msg.sender)].field_0 = 0
                                                stor4[address(msg.sender)].field_256 = 0
                                                stor4[address(msg.sender)].field_512 = 0
                                                stor4[address(msg.sender)].field_768 = 0
                                                stor4[address(msg.sender)].field_1024 = 0
                                                stor4[address(msg.sender)].field_1280 = 0
                                                stor4[address(msg.sender)].field_1536 = 0
                                                emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              3,
                                                              arg2,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                            else:
                                                if block.timestamp < stor4[address(msg.sender)].field_768:
                                                    require stor4[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                                    if arg2 > balanceOf[address(msg.sender)] - stor4[address(msg.sender)].field_1536:
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      64,
                                                                      0,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                        revert
                                                    stor4[address(msg.sender)].field_1024 = 0
                                                    stor4[address(msg.sender)].field_1280 = 0
                                                    emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  2,
                                                                  arg2,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                else:
                                                    if not stor4[address(msg.sender)].field_768:
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      64,
                                                                      0,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                        revert
                                                    if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      64,
                                                                      0,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                        revert
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      64,
                                                                      0,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                        revert
                                                    stor4[address(msg.sender)].field_0 = 0
                                                    stor4[address(msg.sender)].field_256 = 0
                                                    stor4[address(msg.sender)].field_512 = 0
                                                    stor4[address(msg.sender)].field_768 = 0
                                                    stor4[address(msg.sender)].field_1024 = 0
                                                    stor4[address(msg.sender)].field_1280 = 0
                                                    stor4[address(msg.sender)].field_1536 = 0
                                                    emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  3,
                                                                  arg2,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                    else:
                                        if not stor4[address(msg.sender)].field_768:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            stor4[address(msg.sender)].field_0 = 0
                                            stor4[address(msg.sender)].field_256 = 0
                                            stor4[address(msg.sender)].field_512 = 0
                                            stor4[address(msg.sender)].field_768 = 0
                                            stor4[address(msg.sender)].field_1024 = 0
                                            stor4[address(msg.sender)].field_1280 = 0
                                            stor4[address(msg.sender)].field_1536 = 0
                                            emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          2,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                        else:
                                            if not stor4[address(msg.sender)].field_768:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            if not stor4[address(msg.sender)].field_512:
                                                if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                stor4[address(msg.sender)].field_0 = 0
                                                stor4[address(msg.sender)].field_256 = 0
                                                stor4[address(msg.sender)].field_512 = 0
                                                stor4[address(msg.sender)].field_768 = 0
                                                stor4[address(msg.sender)].field_1024 = 0
                                                stor4[address(msg.sender)].field_1280 = 0
                                                stor4[address(msg.sender)].field_1536 = 0
                                                emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              3,
                                                              arg2,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                            else:
                                                if stor4[address(msg.sender)].field_512 > block.timestamp:
                                                    if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      64,
                                                                      0,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                        revert
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      64,
                                                                      0,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                        revert
                                                    stor4[address(msg.sender)].field_0 = 0
                                                    stor4[address(msg.sender)].field_256 = 0
                                                    stor4[address(msg.sender)].field_512 = 0
                                                    stor4[address(msg.sender)].field_768 = 0
                                                    stor4[address(msg.sender)].field_1024 = 0
                                                    stor4[address(msg.sender)].field_1280 = 0
                                                    stor4[address(msg.sender)].field_1536 = 0
                                                    emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  3,
                                                                  arg2,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                else:
                                                    if block.timestamp < stor4[address(msg.sender)].field_768:
                                                        require stor4[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                                        if arg2 > balanceOf[address(msg.sender)] - stor4[address(msg.sender)].field_1536:
                                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                          64,
                                                                          0,
                                                                          20,
                                                                          'availableResultValue',
                                                                          arg1,
                                                            revert
                                                        stor4[address(msg.sender)].field_1024 = 0
                                                        stor4[address(msg.sender)].field_1280 = 0
                                                        emit 0x98980777: 2, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      2,
                                                                      arg2,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                    else:
                                                        if not stor4[address(msg.sender)].field_768:
                                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                          64,
                                                                          0,
                                                                          20,
                                                                          'availableResultValue',
                                                                          arg1,
                                                            revert
                                                        if stor4[address(msg.sender)].field_768 > block.timestamp:
                                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                          64,
                                                                          0,
                                                                          20,
                                                                          'availableResultValue',
                                                                          arg1,
                                                            revert
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                          64,
                                                                          0,
                                                                          20,
                                                                          'availableResultValue',
                                                                          arg1,
                                                            revert
                                                        stor4[address(msg.sender)].field_0 = 0
                                                        stor4[address(msg.sender)].field_256 = 0
                                                        stor4[address(msg.sender)].field_512 = 0
                                                        stor4[address(msg.sender)].field_768 = 0
                                                        stor4[address(msg.sender)].field_1024 = 0
                                                        stor4[address(msg.sender)].field_1280 = 0
                                                        stor4[address(msg.sender)].field_1536 = 0
                                                        emit 0x98980777: 3, stor4[address(msg.sender)].field_1024, stor4[address(msg.sender)].field_1280, stor4[address(msg.sender)].field_1536, msg.sender
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      3,
                                                                      arg2,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
    require arg2 > 0
    require not stor3
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
