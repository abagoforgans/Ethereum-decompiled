contract main {




// =====================  Runtime code  =====================


mapping of uint256 allowance;
mapping of struct time3;
mapping of uint8 stor2;
address adminAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address founderAddress;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function getTime3(address arg1) {
    return time3[address(arg1)].field_1280
}

function totalSupply() {
    return totalSupply
}

function isTransferable() {
    return bool(uint8(stor4.field_160))
}

function decimals() {
    return decimals
}

function getInitBalance(address arg1) {
    return time3[address(arg1)].field_256
}

function isLocked(address arg1) {
    return bool(stor2[address(arg1)])
}

function getTime1(address arg1) {
    return time3[address(arg1)].field_768
}

function getAdmin() {
    require adminAddress == msg.sender
    return adminAddress
}

function balanceOf(address arg1) {
    return time3[address(arg1)].field_512
}

function sub_8657345f(?) {
    return bool(time3[address(arg1)].field_0)
}

function getFounder() {
    require founderAddress == msg.sender
    return founderAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getPercent1(address arg1) {
    return time3[address(arg1)].field_1536
}

function getPercent2(address arg1) {
    return time3[address(arg1)].field_1792
}

function getPercent3(address arg1) {
    return time3[address(arg1)].field_2048
}

function sub_d85853f4(?) {
    return bool(uint8(stor4.field_168))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getTime2(address arg1) {
    return time3[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function lock(address arg1) {
    require adminAddress == msg.sender
    stor2[address(arg1)] = 1
}

function unlock(address arg1) {
    require adminAddress == msg.sender
    stor2[address(arg1)] = 0
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function sub_476ef85f(?) {
    require adminAddress == msg.sender
    Mask(88, 0, stor4.field_168) = 1
}

function sub_92230126(?) {
    require adminAddress == msg.sender
    Mask(88, 0, stor4.field_168) = 0
}

function enableTransfer() {
    require adminAddress == msg.sender
    Mask(96, 0, stor4.field_160) = 1
}

function disableTransfer() {
    require adminAddress == msg.sender
    Mask(96, 0, stor4.field_160) = 0
}

function changeFounder(address arg1) {
    require founderAddress == msg.sender
    founderAddress = arg1
}

function sub_351fe636(?) {
    require founderAddress == msg.sender
    time3[address(arg1)].field_0 = uint8(arg2)
    return 1
}

function setTime1(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    time3[address(arg1)].field_768 = arg2
    return 1
}

function setTime3(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    time3[address(arg1)].field_1280 = arg2
    return 1
}

function setTime2(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    time3[address(arg1)].field_1024 = arg2
    return 1
}

function setPercent3(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    time3[address(arg1)].field_2048 = arg2
    return 1
}

function setPercent1(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    time3[address(arg1)].field_1536 = arg2
    return 1
}

function setPercent2(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    time3[address(arg1)].field_1792 = arg2
    return 1
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor4.field_160)
    require not stor2[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    require arg1
    require arg2 <= time3[address(msg.sender)].field_512
    require arg2 <= time3[address(msg.sender)].field_512
    time3[address(msg.sender)].field_512 -= arg2
    require time3[address(arg1)].field_512 + arg2 >= time3[address(arg1)].field_512
    time3[address(arg1)].field_512 += arg2
    require time3[address(arg1)].field_256 + arg2 >= time3[address(arg1)].field_256
    time3[address(arg1)].field_256 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function checkTime(address arg1, uint256 arg2) {
    if not uint8(stor4.field_168):
        return 1
    if not time3[address(arg1)].field_0:
        return 1
    require time3[address(arg1)].field_512 <= time3[address(arg1)].field_256
    require arg2 >= 0
    if time3[address(arg1)].field_768 <= block.timestamp:
        if time3[address(arg1)].field_1024 > block.timestamp:
            if not time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2:
                if not time3[address(arg1)].field_256:
                    return 1
                require time3[address(arg1)].field_256
                require time3[address(arg1)].field_256 * time3[address(arg1)].field_1536 / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536
                if time3[address(arg1)].field_256 * time3[address(arg1)].field_1536 >= 0:
                    return 1
            else:
                require time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2
                require (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2) / time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2 == 100
                if not time3[address(arg1)].field_256:
                    if 0 >= (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2):
                        return 1
                else:
                    require time3[address(arg1)].field_256
                    require time3[address(arg1)].field_256 * time3[address(arg1)].field_1536 / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536
                    if time3[address(arg1)].field_256 * time3[address(arg1)].field_1536 >= (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2):
                        return 1
        else:
            require time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792 >= time3[address(arg1)].field_1536
            if time3[address(arg1)].field_1280 > block.timestamp:
                if not time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2:
                    if not time3[address(arg1)].field_256:
                        return 1
                    require time3[address(arg1)].field_256
                    require (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792
                    if (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) >= 0:
                        return 1
                else:
                    require time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2
                    require (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2) / time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2 == 100
                    if not time3[address(arg1)].field_256:
                        if 0 >= (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2):
                            return 1
                    else:
                        require time3[address(arg1)].field_256
                        require (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792
                        if (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) >= (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2):
                            return 1
            else:
                require time3[address(arg1)].field_2048 >= 0
                if not time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2:
                    if not time3[address(arg1)].field_256:
                        return 1
                    require time3[address(arg1)].field_256
                    require (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_2048 * time3[address(arg1)].field_256) / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792 + time3[address(arg1)].field_2048
                    if (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_2048 * time3[address(arg1)].field_256) >= 0:
                        return 1
                else:
                    require time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2
                    require (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2) / time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg2 == 100
                    if not time3[address(arg1)].field_256:
                        if 0 >= (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2):
                            return 1
                    else:
                        require time3[address(arg1)].field_256
                        require (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_2048 * time3[address(arg1)].field_256) / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792 + time3[address(arg1)].field_2048
                        if (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_2048 * time3[address(arg1)].field_256) >= (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg2):
                            return 1
        return 0
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor4.field_160)
    require not stor2[address(msg.sender)]
    require arg2
    require arg3 <= time3[address(arg1)].field_512
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not stor2[address(arg1)]
    if uint8(stor4.field_168):
        if time3[address(arg1)].field_0:
            require time3[address(arg1)].field_512 <= time3[address(arg1)].field_256
            require arg3 >= 0
            if time3[address(arg1)].field_768 > block.timestamp:
                return 0
            if time3[address(arg1)].field_1024 > block.timestamp:
                if not time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3:
                    if time3[address(arg1)].field_256:
                        require time3[address(arg1)].field_256
                        require time3[address(arg1)].field_256 * time3[address(arg1)].field_1536 / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536
                        if time3[address(arg1)].field_256 * time3[address(arg1)].field_1536 < 0:
                            return 0
                else:
                    require time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3
                    require (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3) / time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3 == 100
                    if not time3[address(arg1)].field_256:
                        if 0 < (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3):
                            return 0
                    else:
                        require time3[address(arg1)].field_256
                        require time3[address(arg1)].field_256 * time3[address(arg1)].field_1536 / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536
                        if time3[address(arg1)].field_256 * time3[address(arg1)].field_1536 < (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3):
                            return 0
            else:
                require time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792 >= time3[address(arg1)].field_1536
                if time3[address(arg1)].field_1280 > block.timestamp:
                    if not time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3:
                        if time3[address(arg1)].field_256:
                            require time3[address(arg1)].field_256
                            require (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792
                            if (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) < 0:
                                return 0
                    else:
                        require time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3
                        require (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3) / time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3 == 100
                        if not time3[address(arg1)].field_256:
                            if 0 < (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3):
                                return 0
                        else:
                            require time3[address(arg1)].field_256
                            require (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792
                            if (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) < (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3):
                                return 0
                else:
                    require time3[address(arg1)].field_2048 >= 0
                    if not time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3:
                        if time3[address(arg1)].field_256:
                            require time3[address(arg1)].field_256
                            require (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_2048 * time3[address(arg1)].field_256) / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792 + time3[address(arg1)].field_2048
                            if (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_2048 * time3[address(arg1)].field_256) < 0:
                                return 0
                    else:
                        require time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3
                        require (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3) / time3[address(arg1)].field_256 - time3[address(arg1)].field_512 + arg3 == 100
                        if not time3[address(arg1)].field_256:
                            if 0 < (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3):
                                return 0
                        else:
                            require time3[address(arg1)].field_256
                            require (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_2048 * time3[address(arg1)].field_256) / time3[address(arg1)].field_256 == time3[address(arg1)].field_1536 + time3[address(arg1)].field_1792 + time3[address(arg1)].field_2048
                            if (time3[address(arg1)].field_1536 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_1792 * time3[address(arg1)].field_256) + (time3[address(arg1)].field_2048 * time3[address(arg1)].field_256) < (100 * time3[address(arg1)].field_256) - (100 * time3[address(arg1)].field_512) + (100 * arg3):
                                return 0
    require arg3 <= time3[address(arg1)].field_512
    time3[address(arg1)].field_512 -= arg3
    require time3[address(arg2)].field_512 + arg3 >= time3[address(arg2)].field_512
    time3[address(arg2)].field_512 += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor4.field_160)
    require not stor2[address(msg.sender)]
    require arg1
    require arg2 <= time3[address(msg.sender)].field_512
    if uint8(stor4.field_168):
        if time3[address(msg.sender)].field_0:
            require time3[address(msg.sender)].field_512 <= time3[address(msg.sender)].field_256
            require arg2 >= 0
            if time3[address(msg.sender)].field_768 > block.timestamp:
                return 0
            if time3[address(msg.sender)].field_1024 > block.timestamp:
                if not time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2:
                    if time3[address(msg.sender)].field_256:
                        require time3[address(msg.sender)].field_256
                        require time3[address(msg.sender)].field_256 * time3[address(msg.sender)].field_1536 / time3[address(msg.sender)].field_256 == time3[address(msg.sender)].field_1536
                        if time3[address(msg.sender)].field_256 * time3[address(msg.sender)].field_1536 < 0:
                            return 0
                else:
                    require time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2
                    require (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2) / time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2 == 100
                    if not time3[address(msg.sender)].field_256:
                        if 0 < (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2):
                            return 0
                    else:
                        require time3[address(msg.sender)].field_256
                        require time3[address(msg.sender)].field_256 * time3[address(msg.sender)].field_1536 / time3[address(msg.sender)].field_256 == time3[address(msg.sender)].field_1536
                        if time3[address(msg.sender)].field_256 * time3[address(msg.sender)].field_1536 < (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2):
                            return 0
            else:
                require time3[address(msg.sender)].field_1536 + time3[address(msg.sender)].field_1792 >= time3[address(msg.sender)].field_1536
                if time3[address(msg.sender)].field_1280 > block.timestamp:
                    if not time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2:
                        if time3[address(msg.sender)].field_256:
                            require time3[address(msg.sender)].field_256
                            require (time3[address(msg.sender)].field_1536 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_1792 * time3[address(msg.sender)].field_256) / time3[address(msg.sender)].field_256 == time3[address(msg.sender)].field_1536 + time3[address(msg.sender)].field_1792
                            if (time3[address(msg.sender)].field_1536 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_1792 * time3[address(msg.sender)].field_256) < 0:
                                return 0
                    else:
                        require time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2
                        require (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2) / time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2 == 100
                        if not time3[address(msg.sender)].field_256:
                            if 0 < (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2):
                                return 0
                        else:
                            require time3[address(msg.sender)].field_256
                            require (time3[address(msg.sender)].field_1536 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_1792 * time3[address(msg.sender)].field_256) / time3[address(msg.sender)].field_256 == time3[address(msg.sender)].field_1536 + time3[address(msg.sender)].field_1792
                            if (time3[address(msg.sender)].field_1536 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_1792 * time3[address(msg.sender)].field_256) < (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2):
                                return 0
                else:
                    require time3[address(msg.sender)].field_2048 >= 0
                    if not time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2:
                        if time3[address(msg.sender)].field_256:
                            require time3[address(msg.sender)].field_256
                            require (time3[address(msg.sender)].field_1536 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_1792 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_2048 * time3[address(msg.sender)].field_256) / time3[address(msg.sender)].field_256 == time3[address(msg.sender)].field_1536 + time3[address(msg.sender)].field_1792 + time3[address(msg.sender)].field_2048
                            if (time3[address(msg.sender)].field_1536 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_1792 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_2048 * time3[address(msg.sender)].field_256) < 0:
                                return 0
                    else:
                        require time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2
                        require (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2) / time3[address(msg.sender)].field_256 - time3[address(msg.sender)].field_512 + arg2 == 100
                        if not time3[address(msg.sender)].field_256:
                            if 0 < (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2):
                                return 0
                        else:
                            require time3[address(msg.sender)].field_256
                            require (time3[address(msg.sender)].field_1536 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_1792 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_2048 * time3[address(msg.sender)].field_256) / time3[address(msg.sender)].field_256 == time3[address(msg.sender)].field_1536 + time3[address(msg.sender)].field_1792 + time3[address(msg.sender)].field_2048
                            if (time3[address(msg.sender)].field_1536 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_1792 * time3[address(msg.sender)].field_256) + (time3[address(msg.sender)].field_2048 * time3[address(msg.sender)].field_256) < (100 * time3[address(msg.sender)].field_256) - (100 * time3[address(msg.sender)].field_512) + (100 * arg2):
                                return 0
    require arg2 <= time3[address(msg.sender)].field_512
    time3[address(msg.sender)].field_512 -= arg2
    require time3[address(arg1)].field_512 + arg2 >= time3[address(arg1)].field_512
    time3[address(arg1)].field_512 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
