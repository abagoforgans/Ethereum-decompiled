contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 INITIAL_SUPPLY;
address sub_3ec954edAddress;
mapping of struct stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function sub_3ec954ed(?) {
    return sub_3ec954edAddress
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_cd00c538(?) {
    if owner != msg.sender:
        require stor11[address(msg.sender)]
    require arg1
    sub_3ec954edAddress = arg1
    emit PrintLog(Array(len=17, data='setRecoveryWallet'), 1, arg1);
    return 1
}

function setSupervisor(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor11[address(arg1)]
    stor11[address(arg1)] = 1
    emit PrintLog(Array(len=12, data='isSupervisor'), 1, arg1);
    return 1
}

function setLockedWalletEntity(address arg1) {
    if owner != msg.sender:
        require stor11[address(msg.sender)]
    require arg1
    require not stor12[address(arg1)]
    stor12[address(arg1)] = 1
    emit PrintLog(Array(len=20, data='isLockedWalletEntity'), 1, arg1);
    return 1
}

function removeSupervisor(address arg1) {
    require msg.sender == owner
    require arg1
    require stor11[address(arg1)]
    stor11[address(arg1)] = 0
    emit PrintLog(address arg1, string arg2, uint256 arg3):
                  64,
                  0,
                  12,
                  'isSupervisor',
                  arg1,
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if owner != msg.sender:
        require stor11[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_076c1ef3(?) {
    if owner != msg.sender:
        require stor11[address(msg.sender)]
    require arg1
    require sub_3ec954edAddress == arg1
    sub_3ec954edAddress = 0
    emit PrintLog(address arg1, string arg2, uint256 arg3):
                  64,
                  0,
                  20,
                  'removeRecoveryWallet',
                  arg1,
    return 1
}

function removeLockedWalletEntity(address arg1) {
    if owner != msg.sender:
        require stor11[address(msg.sender)]
    require arg1
    require stor12[address(arg1)]
    stor12[address(arg1)] = 0
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
            require stor11[address(msg.sender)]
    return stor10[address(arg1)].field_256, 
           stor10[address(arg1)].field_1024,
           stor10[address(arg1)].field_512,
           stor10[address(arg1)].field_1280,
           stor10[address(arg1)].field_768,
           stor10[address(arg1)].field_1536
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setLockTime(address arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require stor11[address(msg.sender)]
    require arg1
    require arg2 > 0
    require arg2 < 4
    require arg3 > block.timestamp
    if arg1 != msg.sender:
        if owner != msg.sender:
            require stor11[address(msg.sender)]
    if arg2 != 1:
        if arg2 != 2:
            if arg2 != 3:
                return 0
            if not stor10[address(arg1)].field_768:
                return 0
            if arg3 <= stor10[address(arg1)].field_512:
                return 0
            stor10[address(arg1)].field_768 = arg3
        else:
            if not stor10[address(arg1)].field_512:
                if arg2 != 3:
                    return 0
                if not stor10[address(arg1)].field_768:
                    return 0
                if arg3 <= stor10[address(arg1)].field_512:
                    return 0
                stor10[address(arg1)].field_768 = arg3
            else:
                if arg3 <= stor10[address(arg1)].field_256:
                    return 0
                if stor10[address(arg1)].field_768:
                    if arg3 >= stor10[address(arg1)].field_768:
                        return 0
                stor10[address(arg1)].field_512 = arg3
    else:
        if stor10[address(arg1)].field_256:
            if stor10[address(arg1)].field_512:
                if arg3 >= stor10[address(arg1)].field_512:
                    return 0
            stor10[address(arg1)].field_256 = arg3
        else:
            if arg2 != 2:
                if arg2 != 3:
                    return 0
                if not stor10[address(arg1)].field_768:
                    return 0
                if arg3 <= stor10[address(arg1)].field_512:
                    return 0
                stor10[address(arg1)].field_768 = arg3
            else:
                if not stor10[address(arg1)].field_512:
                    if arg2 != 3:
                        return 0
                    if not stor10[address(arg1)].field_768:
                        return 0
                    if arg3 <= stor10[address(arg1)].field_512:
                        return 0
                    stor10[address(arg1)].field_768 = arg3
                else:
                    if arg3 <= stor10[address(arg1)].field_256:
                        return 0
                    if stor10[address(arg1)].field_768:
                        if arg3 >= stor10[address(arg1)].field_768:
                            return 0
                    stor10[address(arg1)].field_512 = arg3
    return 1
}

function transferToLockedBalance(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    if owner != msg.sender:
        require stor11[address(msg.sender)]
    require not uint8(stor3.field_160)
    if msg.sender == arg1:
        revert with 0, 'Check your address!!'
    if arg2 <= block.timestamp:
        revert with 0, 'Check your First input values!!;'
    if arg3 <= 0:
        revert with 0, 'Check your First input values!!;'
    require arg3 >= 0
    if arg4 <= block.timestamp:
        if arg6 <= block.timestamp:
            require arg1
            require arg3 <= balanceOf[address(msg.sender)]
            require arg3 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg3
            require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg3
            emit Transfer(arg3, msg.sender, arg1);
        else:
            if arg7 <= 0:
                require arg1
                require arg3 <= balanceOf[address(msg.sender)]
                require arg3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg3
                require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg3
                emit Transfer(arg3, msg.sender, arg1);
            else:
                if arg6 <= arg4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Check your third Unlock Time or Second input values!!'
                if arg4 <= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Check your third Unlock Time or Second input values!!'
                if arg5 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Check your third Unlock Time or Second input values!!'
                require arg3 + arg7 >= arg3
                require arg1
                require arg3 + arg7 <= balanceOf[address(msg.sender)]
                require arg3 + arg7 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg3 - arg7
                require balanceOf[address(arg1)] + arg3 + arg7 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg3 + arg7
                emit Transfer((arg3 + arg7), msg.sender, arg1);
    else:
        if arg5 <= 0:
            if arg6 <= block.timestamp:
                require arg1
                require arg3 <= balanceOf[address(msg.sender)]
                require arg3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg3
                require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg3
                emit Transfer(arg3, msg.sender, arg1);
            else:
                if arg7 <= 0:
                    require arg1
                    require arg3 <= balanceOf[address(msg.sender)]
                    require arg3 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg3
                    require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += arg3
                    emit Transfer(arg3, msg.sender, arg1);
                else:
                    if arg6 <= arg4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Check your third Unlock Time or Second input values!!'
                    if arg4 <= block.timestamp:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Check your third Unlock Time or Second input values!!'
                    if arg5 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Check your third Unlock Time or Second input values!!'
                    require arg3 + arg7 >= arg3
                    require arg1
                    require arg3 + arg7 <= balanceOf[address(msg.sender)]
                    require arg3 + arg7 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg3 - arg7
                    require balanceOf[address(arg1)] + arg3 + arg7 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg3 + arg7
                    emit Transfer((arg3 + arg7), msg.sender, arg1);
        else:
            if arg4 <= arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Second Unlock time must be greater than First Unlock Time!!'
            require arg3 + arg5 >= arg3
            if arg6 <= block.timestamp:
                require arg1
                require arg3 + arg5 <= balanceOf[address(msg.sender)]
                require arg3 + arg5 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg3 - arg5
                require balanceOf[address(arg1)] + arg3 + arg5 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg3 + arg5
                emit Transfer((arg3 + arg5), msg.sender, arg1);
            else:
                if arg7 <= 0:
                    require arg1
                    require arg3 + arg5 <= balanceOf[address(msg.sender)]
                    require arg3 + arg5 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg3 - arg5
                    require balanceOf[address(arg1)] + arg3 + arg5 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg3 + arg5
                    emit Transfer((arg3 + arg5), msg.sender, arg1);
                else:
                    if arg6 <= arg4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Check your third Unlock Time or Second input values!!'
                    if arg4 <= block.timestamp:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Check your third Unlock Time or Second input values!!'
                    if arg5 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Check your third Unlock Time or Second input values!!'
                    require arg7 >= 0
                    require arg1
                    require arg3 + arg5 + arg7 <= balanceOf[address(msg.sender)]
                    require arg3 + arg5 + arg7 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg3 - arg5 - arg7
                    require balanceOf[address(arg1)] + arg3 + arg5 + arg7 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg3 + arg5 + arg7
                    emit Transfer((arg3 + arg5 + arg7), msg.sender, arg1);
    stor10[address(arg1)].field_0 = arg1
    stor10[address(arg1)].field_256 = arg2
    stor10[address(arg1)].field_1024 = arg3
    if arg4 <= block.timestamp:
        if arg6 > block.timestamp:
            if arg7 > 0:
                stor10[address(arg1)].field_768 = arg6
                stor10[address(arg1)].field_1536 = arg7
    else:
        if arg5 > 0:
            stor10[address(arg1)].field_512 = arg4
            stor10[address(arg1)].field_1280 = arg5
        if arg6 > block.timestamp:
            if arg7 > 0:
                stor10[address(arg1)].field_768 = arg6
                stor10[address(arg1)].field_1536 = arg7
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        if arg1 != sub_3ec954edAddress:
            require not uint8(stor3.field_160)
        else:
            if not sub_3ec954edAddress:
                require not uint8(stor3.field_160)
            else:
                stor10[address(msg.sender)].field_0 = 0
                stor10[address(msg.sender)].field_256 = 0
                stor10[address(msg.sender)].field_512 = 0
                stor10[address(msg.sender)].field_768 = 0
                stor10[address(msg.sender)].field_1024 = 0
                stor10[address(msg.sender)].field_1280 = 0
                stor10[address(msg.sender)].field_1536 = 0
    require not stor12[address(msg.sender)]
    if msg.sender == arg1:
        revert with 0, 'Check your address!!'
    if not stor10[address(msg.sender)].field_0:
        emit PrintLog(Array(len=20, data='availableResultValue'), arg2, arg1);
    else:
        if msg.sender != msg.sender:
            if owner != msg.sender:
                require stor11[address(msg.sender)]
        if block.timestamp < stor10[address(msg.sender)].field_256:
            require stor10[address(msg.sender)].field_1024 + stor10[address(msg.sender)].field_1280 >= stor10[address(msg.sender)].field_1024
            require stor10[address(msg.sender)].field_1536 >= 0
            require stor10[address(msg.sender)].field_1024 + stor10[address(msg.sender)].field_1280 + stor10[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
            if arg2 > balanceOf[address(msg.sender)] - stor10[address(msg.sender)].field_1024 - stor10[address(msg.sender)].field_1280 - stor10[address(msg.sender)].field_1536:
                emit PrintLog(address arg1, string arg2, uint256 arg3):
                              64,
                              0,
                              20,
                              'availableResultValue',
                              arg1,
                revert
            emit PrintLog(Array(len=20, data='availableResultValue'), arg2, arg1);
        else:
            if stor10[address(msg.sender)].field_256 > block.timestamp:
                if not stor10[address(msg.sender)].field_512:
                    if not stor10[address(msg.sender)].field_768:
                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                      64,
                                      0,
                                      20,
                                      'availableResultValue',
                                      arg1,
                        revert
                    if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                    stor10[address(msg.sender)].field_0 = 0
                    stor10[address(msg.sender)].field_256 = 0
                    stor10[address(msg.sender)].field_512 = 0
                    stor10[address(msg.sender)].field_768 = 0
                    stor10[address(msg.sender)].field_1024 = 0
                    stor10[address(msg.sender)].field_1280 = 0
                    stor10[address(msg.sender)].field_1536 = 0
                    emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                  3,
                                  arg2,
                                  20,
                                  'availableResultValue',
                                  arg1,
                else:
                    if stor10[address(msg.sender)].field_512 > block.timestamp:
                        if not stor10[address(msg.sender)].field_768:
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          64,
                                          0,
                                          20,
                                          'availableResultValue',
                                          arg1,
                            revert
                        if not stor10[address(msg.sender)].field_512:
                            if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                            stor10[address(msg.sender)].field_0 = 0
                            stor10[address(msg.sender)].field_256 = 0
                            stor10[address(msg.sender)].field_512 = 0
                            stor10[address(msg.sender)].field_768 = 0
                            stor10[address(msg.sender)].field_1024 = 0
                            stor10[address(msg.sender)].field_1280 = 0
                            stor10[address(msg.sender)].field_1536 = 0
                            emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          3,
                                          arg2,
                                          20,
                                          'availableResultValue',
                                          arg1,
                        else:
                            if stor10[address(msg.sender)].field_512 > block.timestamp:
                                if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                stor10[address(msg.sender)].field_0 = 0
                                stor10[address(msg.sender)].field_256 = 0
                                stor10[address(msg.sender)].field_512 = 0
                                stor10[address(msg.sender)].field_768 = 0
                                stor10[address(msg.sender)].field_1024 = 0
                                stor10[address(msg.sender)].field_1280 = 0
                                stor10[address(msg.sender)].field_1536 = 0
                                emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              3,
                                              arg2,
                                              20,
                                              'availableResultValue',
                                              arg1,
                            else:
                                if block.timestamp < stor10[address(msg.sender)].field_768:
                                    require stor10[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                    if arg2 > balanceOf[address(msg.sender)] - stor10[address(msg.sender)].field_1536:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    stor10[address(msg.sender)].field_1024 = 0
                                    stor10[address(msg.sender)].field_1280 = 0
                                    emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  2,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if not stor10[address(msg.sender)].field_768:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                    stor10[address(msg.sender)].field_0 = 0
                                    stor10[address(msg.sender)].field_256 = 0
                                    stor10[address(msg.sender)].field_512 = 0
                                    stor10[address(msg.sender)].field_768 = 0
                                    stor10[address(msg.sender)].field_1024 = 0
                                    stor10[address(msg.sender)].field_1280 = 0
                                    stor10[address(msg.sender)].field_1536 = 0
                                    emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  3,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                    else:
                        if not stor10[address(msg.sender)].field_768:
                            if arg2 > balanceOf[address(msg.sender)]:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            stor10[address(msg.sender)].field_0 = 0
                            stor10[address(msg.sender)].field_256 = 0
                            stor10[address(msg.sender)].field_512 = 0
                            stor10[address(msg.sender)].field_768 = 0
                            stor10[address(msg.sender)].field_1024 = 0
                            stor10[address(msg.sender)].field_1280 = 0
                            stor10[address(msg.sender)].field_1536 = 0
                            emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          2,
                                          arg2,
                                          20,
                                          'availableResultValue',
                                          arg1,
                        else:
                            if not stor10[address(msg.sender)].field_768:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if not stor10[address(msg.sender)].field_512:
                                if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                stor10[address(msg.sender)].field_0 = 0
                                stor10[address(msg.sender)].field_256 = 0
                                stor10[address(msg.sender)].field_512 = 0
                                stor10[address(msg.sender)].field_768 = 0
                                stor10[address(msg.sender)].field_1024 = 0
                                stor10[address(msg.sender)].field_1280 = 0
                                stor10[address(msg.sender)].field_1536 = 0
                                emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              3,
                                              arg2,
                                              20,
                                              'availableResultValue',
                                              arg1,
                            else:
                                if stor10[address(msg.sender)].field_512 > block.timestamp:
                                    if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                    stor10[address(msg.sender)].field_0 = 0
                                    stor10[address(msg.sender)].field_256 = 0
                                    stor10[address(msg.sender)].field_512 = 0
                                    stor10[address(msg.sender)].field_768 = 0
                                    stor10[address(msg.sender)].field_1024 = 0
                                    stor10[address(msg.sender)].field_1280 = 0
                                    stor10[address(msg.sender)].field_1536 = 0
                                    emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  3,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if block.timestamp < stor10[address(msg.sender)].field_768:
                                        require stor10[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                        if arg2 > balanceOf[address(msg.sender)] - stor10[address(msg.sender)].field_1536:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        stor10[address(msg.sender)].field_1024 = 0
                                        stor10[address(msg.sender)].field_1280 = 0
                                        emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      2,
                                                      arg2,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                    else:
                                        if not stor10[address(msg.sender)].field_768:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                        stor10[address(msg.sender)].field_0 = 0
                                        stor10[address(msg.sender)].field_256 = 0
                                        stor10[address(msg.sender)].field_512 = 0
                                        stor10[address(msg.sender)].field_768 = 0
                                        stor10[address(msg.sender)].field_1024 = 0
                                        stor10[address(msg.sender)].field_1280 = 0
                                        stor10[address(msg.sender)].field_1536 = 0
                                        emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      3,
                                                      arg2,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
            else:
                if not stor10[address(msg.sender)].field_512:
                    if arg2 > balanceOf[address(msg.sender)]:
                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                      64,
                                      0,
                                      20,
                                      'availableResultValue',
                                      arg1,
                        revert
                    stor10[address(msg.sender)].field_0 = 0
                    stor10[address(msg.sender)].field_256 = 0
                    stor10[address(msg.sender)].field_512 = 0
                    stor10[address(msg.sender)].field_768 = 0
                    stor10[address(msg.sender)].field_1024 = 0
                    stor10[address(msg.sender)].field_1280 = 0
                    stor10[address(msg.sender)].field_1536 = 0
                    emit Unlock(1, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                  1,
                                  arg2,
                                  20,
                                  'availableResultValue',
                                  arg1,
                else:
                    if stor10[address(msg.sender)].field_256 > block.timestamp:
                        if not stor10[address(msg.sender)].field_512:
                            if not stor10[address(msg.sender)].field_768:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                            stor10[address(msg.sender)].field_0 = 0
                            stor10[address(msg.sender)].field_256 = 0
                            stor10[address(msg.sender)].field_512 = 0
                            stor10[address(msg.sender)].field_768 = 0
                            stor10[address(msg.sender)].field_1024 = 0
                            stor10[address(msg.sender)].field_1280 = 0
                            stor10[address(msg.sender)].field_1536 = 0
                            emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          3,
                                          arg2,
                                          20,
                                          'availableResultValue',
                                          arg1,
                        else:
                            if stor10[address(msg.sender)].field_512 > block.timestamp:
                                if not stor10[address(msg.sender)].field_768:
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  64,
                                                  0,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                    revert
                                if not stor10[address(msg.sender)].field_512:
                                    if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                    stor10[address(msg.sender)].field_0 = 0
                                    stor10[address(msg.sender)].field_256 = 0
                                    stor10[address(msg.sender)].field_512 = 0
                                    stor10[address(msg.sender)].field_768 = 0
                                    stor10[address(msg.sender)].field_1024 = 0
                                    stor10[address(msg.sender)].field_1280 = 0
                                    stor10[address(msg.sender)].field_1536 = 0
                                    emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  3,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if stor10[address(msg.sender)].field_512 > block.timestamp:
                                        if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                        stor10[address(msg.sender)].field_0 = 0
                                        stor10[address(msg.sender)].field_256 = 0
                                        stor10[address(msg.sender)].field_512 = 0
                                        stor10[address(msg.sender)].field_768 = 0
                                        stor10[address(msg.sender)].field_1024 = 0
                                        stor10[address(msg.sender)].field_1280 = 0
                                        stor10[address(msg.sender)].field_1536 = 0
                                        emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      3,
                                                      arg2,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                    else:
                                        if block.timestamp < stor10[address(msg.sender)].field_768:
                                            require stor10[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                            if arg2 > balanceOf[address(msg.sender)] - stor10[address(msg.sender)].field_1536:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            stor10[address(msg.sender)].field_1024 = 0
                                            stor10[address(msg.sender)].field_1280 = 0
                                            emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          2,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                        else:
                                            if not stor10[address(msg.sender)].field_768:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                            stor10[address(msg.sender)].field_0 = 0
                                            stor10[address(msg.sender)].field_256 = 0
                                            stor10[address(msg.sender)].field_512 = 0
                                            stor10[address(msg.sender)].field_768 = 0
                                            stor10[address(msg.sender)].field_1024 = 0
                                            stor10[address(msg.sender)].field_1280 = 0
                                            stor10[address(msg.sender)].field_1536 = 0
                                            emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          3,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                            else:
                                if not stor10[address(msg.sender)].field_768:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    stor10[address(msg.sender)].field_0 = 0
                                    stor10[address(msg.sender)].field_256 = 0
                                    stor10[address(msg.sender)].field_512 = 0
                                    stor10[address(msg.sender)].field_768 = 0
                                    stor10[address(msg.sender)].field_1024 = 0
                                    stor10[address(msg.sender)].field_1280 = 0
                                    stor10[address(msg.sender)].field_1536 = 0
                                    emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  2,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if not stor10[address(msg.sender)].field_768:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if not stor10[address(msg.sender)].field_512:
                                        if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                        stor10[address(msg.sender)].field_0 = 0
                                        stor10[address(msg.sender)].field_256 = 0
                                        stor10[address(msg.sender)].field_512 = 0
                                        stor10[address(msg.sender)].field_768 = 0
                                        stor10[address(msg.sender)].field_1024 = 0
                                        stor10[address(msg.sender)].field_1280 = 0
                                        stor10[address(msg.sender)].field_1536 = 0
                                        emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      3,
                                                      arg2,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                    else:
                                        if stor10[address(msg.sender)].field_512 > block.timestamp:
                                            if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                            stor10[address(msg.sender)].field_0 = 0
                                            stor10[address(msg.sender)].field_256 = 0
                                            stor10[address(msg.sender)].field_512 = 0
                                            stor10[address(msg.sender)].field_768 = 0
                                            stor10[address(msg.sender)].field_1024 = 0
                                            stor10[address(msg.sender)].field_1280 = 0
                                            stor10[address(msg.sender)].field_1536 = 0
                                            emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          3,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                        else:
                                            if block.timestamp < stor10[address(msg.sender)].field_768:
                                                require stor10[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                                if arg2 > balanceOf[address(msg.sender)] - stor10[address(msg.sender)].field_1536:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                stor10[address(msg.sender)].field_1024 = 0
                                                stor10[address(msg.sender)].field_1280 = 0
                                                emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              2,
                                                              arg2,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                            else:
                                                if not stor10[address(msg.sender)].field_768:
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  64,
                                                                  0,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                    revert
                                                if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                                stor10[address(msg.sender)].field_0 = 0
                                                stor10[address(msg.sender)].field_256 = 0
                                                stor10[address(msg.sender)].field_512 = 0
                                                stor10[address(msg.sender)].field_768 = 0
                                                stor10[address(msg.sender)].field_1024 = 0
                                                stor10[address(msg.sender)].field_1280 = 0
                                                stor10[address(msg.sender)].field_1536 = 0
                                                emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              3,
                                                              arg2,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                    else:
                        if not stor10[address(msg.sender)].field_512:
                            if not stor10[address(msg.sender)].field_768:
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              64,
                                              0,
                                              20,
                                              'availableResultValue',
                                              arg1,
                                revert
                            if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                            stor10[address(msg.sender)].field_0 = 0
                            stor10[address(msg.sender)].field_256 = 0
                            stor10[address(msg.sender)].field_512 = 0
                            stor10[address(msg.sender)].field_768 = 0
                            stor10[address(msg.sender)].field_1024 = 0
                            stor10[address(msg.sender)].field_1280 = 0
                            stor10[address(msg.sender)].field_1536 = 0
                            emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                          3,
                                          arg2,
                                          20,
                                          'availableResultValue',
                                          arg1,
                        else:
                            if block.timestamp < stor10[address(msg.sender)].field_512:
                                require stor10[address(msg.sender)].field_1280 + stor10[address(msg.sender)].field_1536 >= stor10[address(msg.sender)].field_1280
                                require stor10[address(msg.sender)].field_1280 + stor10[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                if arg2 > balanceOf[address(msg.sender)] - stor10[address(msg.sender)].field_1280 - stor10[address(msg.sender)].field_1536:
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  64,
                                                  0,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                    revert
                                stor10[address(msg.sender)].field_1024 = 0
                                emit Unlock(1, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                              1,
                                              arg2,
                                              20,
                                              'availableResultValue',
                                              arg1,
                            else:
                                if not stor10[address(msg.sender)].field_512:
                                    if not stor10[address(msg.sender)].field_768:
                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                      64,
                                                      0,
                                                      20,
                                                      'availableResultValue',
                                                      arg1,
                                        revert
                                    if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                    stor10[address(msg.sender)].field_0 = 0
                                    stor10[address(msg.sender)].field_256 = 0
                                    stor10[address(msg.sender)].field_512 = 0
                                    stor10[address(msg.sender)].field_768 = 0
                                    stor10[address(msg.sender)].field_1024 = 0
                                    stor10[address(msg.sender)].field_1280 = 0
                                    stor10[address(msg.sender)].field_1536 = 0
                                    emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                  3,
                                                  arg2,
                                                  20,
                                                  'availableResultValue',
                                                  arg1,
                                else:
                                    if stor10[address(msg.sender)].field_512 > block.timestamp:
                                        if not stor10[address(msg.sender)].field_768:
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          64,
                                                          0,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                            revert
                                        if not stor10[address(msg.sender)].field_512:
                                            if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                            stor10[address(msg.sender)].field_0 = 0
                                            stor10[address(msg.sender)].field_256 = 0
                                            stor10[address(msg.sender)].field_512 = 0
                                            stor10[address(msg.sender)].field_768 = 0
                                            stor10[address(msg.sender)].field_1024 = 0
                                            stor10[address(msg.sender)].field_1280 = 0
                                            stor10[address(msg.sender)].field_1536 = 0
                                            emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          3,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                        else:
                                            if stor10[address(msg.sender)].field_512 > block.timestamp:
                                                if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                                stor10[address(msg.sender)].field_0 = 0
                                                stor10[address(msg.sender)].field_256 = 0
                                                stor10[address(msg.sender)].field_512 = 0
                                                stor10[address(msg.sender)].field_768 = 0
                                                stor10[address(msg.sender)].field_1024 = 0
                                                stor10[address(msg.sender)].field_1280 = 0
                                                stor10[address(msg.sender)].field_1536 = 0
                                                emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              3,
                                                              arg2,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                            else:
                                                if block.timestamp < stor10[address(msg.sender)].field_768:
                                                    require stor10[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                                    if arg2 > balanceOf[address(msg.sender)] - stor10[address(msg.sender)].field_1536:
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      64,
                                                                      0,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                        revert
                                                    stor10[address(msg.sender)].field_1024 = 0
                                                    stor10[address(msg.sender)].field_1280 = 0
                                                    emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  2,
                                                                  arg2,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                else:
                                                    if not stor10[address(msg.sender)].field_768:
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      64,
                                                                      0,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                        revert
                                                    if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                                    stor10[address(msg.sender)].field_0 = 0
                                                    stor10[address(msg.sender)].field_256 = 0
                                                    stor10[address(msg.sender)].field_512 = 0
                                                    stor10[address(msg.sender)].field_768 = 0
                                                    stor10[address(msg.sender)].field_1024 = 0
                                                    stor10[address(msg.sender)].field_1280 = 0
                                                    stor10[address(msg.sender)].field_1536 = 0
                                                    emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  3,
                                                                  arg2,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                    else:
                                        if not stor10[address(msg.sender)].field_768:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            stor10[address(msg.sender)].field_0 = 0
                                            stor10[address(msg.sender)].field_256 = 0
                                            stor10[address(msg.sender)].field_512 = 0
                                            stor10[address(msg.sender)].field_768 = 0
                                            stor10[address(msg.sender)].field_1024 = 0
                                            stor10[address(msg.sender)].field_1280 = 0
                                            stor10[address(msg.sender)].field_1536 = 0
                                            emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                          2,
                                                          arg2,
                                                          20,
                                                          'availableResultValue',
                                                          arg1,
                                        else:
                                            if not stor10[address(msg.sender)].field_768:
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              64,
                                                              0,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                                revert
                                            if not stor10[address(msg.sender)].field_512:
                                                if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                                stor10[address(msg.sender)].field_0 = 0
                                                stor10[address(msg.sender)].field_256 = 0
                                                stor10[address(msg.sender)].field_512 = 0
                                                stor10[address(msg.sender)].field_768 = 0
                                                stor10[address(msg.sender)].field_1024 = 0
                                                stor10[address(msg.sender)].field_1280 = 0
                                                stor10[address(msg.sender)].field_1536 = 0
                                                emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                              3,
                                                              arg2,
                                                              20,
                                                              'availableResultValue',
                                                              arg1,
                                            else:
                                                if stor10[address(msg.sender)].field_512 > block.timestamp:
                                                    if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                                    stor10[address(msg.sender)].field_0 = 0
                                                    stor10[address(msg.sender)].field_256 = 0
                                                    stor10[address(msg.sender)].field_512 = 0
                                                    stor10[address(msg.sender)].field_768 = 0
                                                    stor10[address(msg.sender)].field_1024 = 0
                                                    stor10[address(msg.sender)].field_1280 = 0
                                                    stor10[address(msg.sender)].field_1536 = 0
                                                    emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                    emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                  3,
                                                                  arg2,
                                                                  20,
                                                                  'availableResultValue',
                                                                  arg1,
                                                else:
                                                    if block.timestamp < stor10[address(msg.sender)].field_768:
                                                        require stor10[address(msg.sender)].field_1536 <= balanceOf[address(msg.sender)]
                                                        if arg2 > balanceOf[address(msg.sender)] - stor10[address(msg.sender)].field_1536:
                                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                          64,
                                                                          0,
                                                                          20,
                                                                          'availableResultValue',
                                                                          arg1,
                                                            revert
                                                        stor10[address(msg.sender)].field_1024 = 0
                                                        stor10[address(msg.sender)].field_1280 = 0
                                                        emit Unlock(2, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      2,
                                                                      arg2,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
                                                    else:
                                                        if not stor10[address(msg.sender)].field_768:
                                                            emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                          64,
                                                                          0,
                                                                          20,
                                                                          'availableResultValue',
                                                                          arg1,
                                                            revert
                                                        if stor10[address(msg.sender)].field_768 > block.timestamp:
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
                                                        stor10[address(msg.sender)].field_0 = 0
                                                        stor10[address(msg.sender)].field_256 = 0
                                                        stor10[address(msg.sender)].field_512 = 0
                                                        stor10[address(msg.sender)].field_768 = 0
                                                        stor10[address(msg.sender)].field_1024 = 0
                                                        stor10[address(msg.sender)].field_1280 = 0
                                                        stor10[address(msg.sender)].field_1536 = 0
                                                        emit Unlock(3, stor10[address(msg.sender)].field_1024, stor10[address(msg.sender)].field_1280, stor10[address(msg.sender)].field_1536, msg.sender);
                                                        emit PrintLog(address arg1, string arg2, uint256 arg3):
                                                                      3,
                                                                      arg2,
                                                                      20,
                                                                      'availableResultValue',
                                                                      arg1,
    require arg2 > 0
    emit 0xa4b3cf05: address(arg1), arg2, bool(stor11[address(msg.sender)]), block.timestamp, msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
