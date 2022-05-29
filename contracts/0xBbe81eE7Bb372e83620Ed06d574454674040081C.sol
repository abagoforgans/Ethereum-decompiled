contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint32 stor37;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor29 = 400000000 * 10^18
    if stor29 / 100:
        require stor29 / 100
        require 55 * stor29 / 100 / stor29 / 100 == 55
    stor30 = 55 * stor29 / 100
    if stor29 / 100:
        require stor29 / 100
        require 6 * stor29 / 100 / stor29 / 100 == 6
    stor31 = 6 * stor29 / 100
    if stor29 / 100:
        require stor29 / 100
        require 39 * stor29 / 100 / stor29 / 100 == 39
    stor32 = 39 * stor29 / 100
    stor33 = 6875 * 10^18 * 3600
    stor34 = 39187500 * 10^18
    stor35 = 39187500 * 10^18
    stor36 = 116875000 * 10^18
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[11892 len 20]
    create contract with 0 wei
                    code: code.data[9001 len 2783]
    require create.new_address
    stor1 = address(create.new_address)
    stor7 = code.data[11784 len 32]
    stor8 = 1541581199
    stor9 = 428217 * 3600
    stor10 = 1544000399
    stor11 = 428889 * 3600
    stor12 = code.data[11816 len 32]
    stor3 = code.data[11848 len 32]
    stor2 = code.data[11892 len 20]
    if code.data[11848 len 32]:
        require code.data[11848 len 32]
        require 30 * code.data[11848 len 32] / code.data[11848 len 32] == 30
    stor14 = 30 * code.data[11848 len 32] / 100
    if stor3:
        require stor3
        require 30 * stor3 / stor3 == 30
    stor15 = 30 * stor3 / 100
    if stor3:
        require stor3
        require 20 * stor3 / stor3 == 20
    stor16 = 20 * stor3 / 100
    if stor3:
        require stor3
        require 15 * stor3 / stor3 == 15
    stor17 = 15 * stor3 / 100
    if stor3:
        require stor3
        require 10 * stor3 / stor3 == 10
    stor18 = 10 * stor3 / 100
    if stor3:
        require stor3
        require 5 * stor3 / stor3 == 5
    stor19 = 5 * stor3 / 100
    require stor11 + (336 * 24 * 3600) >= stor11
    stor21 = stor11 + (336 * 24 * 3600)
    stor22 = stor11 + (672 * 24 * 3600)
    stor23 = stor11 + (1008 * 24 * 3600)
    stor24 = stor11 + (1344 * 24 * 3600)
    stor25 = stor11 + (1680 * 24 * 3600)
    stor26 = 125 * 10^16 * 3600
    stor27 = 7125 * 10^18
    stor28 = 7125 * 10^18
    stor37 = 0
    return code.data[1368 len 7633]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
address tokenAddress;
address stor2;
uint256 rate;
uint256 stor4;
uint256 privateSaleStartTime;
uint256 privateSaleEndTime;
uint256 preSaleStartTime;
uint256 preSaleEndTime;
uint256 preICOStartTime;
uint256 preICOEndTime;
uint256 iCOstartTime;
uint256 iCOEndTime;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 preSaleTarget;
uint256 stor28;
uint256 totalSupply;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 preSaleSupply;
uint256 stor35;
uint256 stor36;
uint8 checkUnsoldTokens;
uint8 stor37; offset 8
uint8 stor37; offset 16
uint8 stor37; offset 24

function preSaleStartTime() {
    return preSaleStartTime
}

function getTokenAddress() {
    require address(stor0.field_0) == msg.sender
    return tokenAddress
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function checkUnsoldTokens() {
    return bool(checkUnsoldTokens)
}

function preSaleSupply() {
    return preSaleSupply
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function privateSaleStartTime() {
    return privateSaleStartTime
}

function ICOEndTime() {
    return iCOEndTime
}

function preICOEndTime() {
    return preICOEndTime
}

function preICOStartTime() {
    return preICOStartTime
}

function ICOstartTime() {
    return iCOstartTime
}

function preSaleEndTime() {
    return preSaleEndTime
}

function preSaleTarget() {
    return preSaleTarget
}

function privateSaleEndTime() {
    return privateSaleEndTime
}

function hasEnded() {
    return (block.timestamp > iCOEndTime)
}

function unpause() {
    require address(stor0.field_0) == msg.sender
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require address(stor0.field_0) == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require address(stor0.field_0) == msg.sender
    require arg1
    emit OwnershipTransferred(address(stor0.field_0), arg1);
    address(stor0.field_0) = arg1
}

function unsoldToken() {
    require address(stor0.field_0) == msg.sender
    require block.timestamp > iCOEndTime
    require not checkUnsoldTokens
    checkUnsoldTokens = 1
    require stor30 + stor31 >= stor31
    stor31 += stor30
    stor30 = 0
}

function addBlockListed(address arg1) {
    require address(stor0.field_0) == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.addBlockeddUser(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function removeBlockListed(address arg1) {
    require address(stor0.field_0) == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.removeBlockeddUser(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function grantReservedToken(address arg1, uint256 arg2) {
    require address(stor0.field_0) == msg.sender
    require arg1
    require stor32 > 0
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require stor32 >= 10^18 * arg2
    require 10^18 * arg2 <= stor32
    stor32 += -1 * 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * arg2
    require ext_call.success
}

function singleTransferToken(address arg1, uint256 arg2) {
    require address(stor0.field_0) == msg.sender
    require arg1
    require stor30 > 0
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require stor30 >= 10^18 * arg2
    require 10^18 * arg2 <= stor30
    stor30 += -1 * 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * arg2
    require ext_call.success
}

function bountyFunds(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require address(stor0.field_0) == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * idx) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg2.length
            require stor31 >= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg2.length
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor31
            stor31 -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require idx < arg2.length
            _58 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _58
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _58
        else:
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 10^18
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * idx) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg2.length
            require stor31 >= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg2.length
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor31
            stor31 -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require idx < arg2.length
            _67 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _67
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _67
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function multiTransferToken(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require address(stor0.field_0) == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * idx) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg2.length
            require stor30 >= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg2.length
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor30
            stor30 -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require idx < arg2.length
            _58 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _58
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _58
        else:
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 10^18
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * idx) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg2.length
            require stor30 >= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg2.length
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor30
            stor30 -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require idx < arg2.length
            _67 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _67
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _67
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.sender
    require block.timestamp >= privateSaleStartTime
    require block.timestamp <= iCOEndTime
    require msg.value
    require msg.value >= 10^17
    require msg.value <= 20 * 10^18
    if block.timestamp < preSaleStartTime:
        if block.timestamp < preICOStartTime:
            require block.timestamp >= iCOstartTime
            require block.timestamp <= iCOEndTime
            require stor36 > 0
            if not uint8(stor37.field_24):
                require stor35 + stor36 >= stor36
                stor36 += stor35
                uint8(stor37.field_24) = 1
            if block.timestamp <= stor21:
                if msg.value:
                    require msg.value
                    require stor16 * msg.value / msg.value == stor16
                require stor16 * msg.value >= 0
                if msg.value:
                    require msg.value
                    require rate * msg.value / msg.value == rate
                require (rate * msg.value) + (stor16 * msg.value) >= stor16 * msg.value
                require (rate * msg.value) + (stor16 * msg.value) <= stor36
                stor36 = stor36 - (rate * msg.value) - (stor16 * msg.value)
                require (rate * msg.value) + (stor16 * msg.value) <= stor30
                stor30 = stor30 - (rate * msg.value) - (stor16 * msg.value)
                require msg.value + stor4 >= stor4
                stor4 += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (rate * msg.value) + (stor16 * msg.value)
                require ext_call.success
                emit TokenPurchase(msg.value, (rate * msg.value) + (stor16 * msg.value), msg.sender, msg.sender);
            else:
                if block.timestamp <= stor22:
                    if msg.value:
                        require msg.value
                        require stor17 * msg.value / msg.value == stor17
                    require stor17 * msg.value >= 0
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require (rate * msg.value) + (stor17 * msg.value) >= stor17 * msg.value
                    require (rate * msg.value) + (stor17 * msg.value) <= stor36
                    stor36 = stor36 - (rate * msg.value) - (stor17 * msg.value)
                    require (rate * msg.value) + (stor17 * msg.value) <= stor30
                    stor30 = stor30 - (rate * msg.value) - (stor17 * msg.value)
                    require msg.value + stor4 >= stor4
                    stor4 += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (stor17 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor17 * msg.value), msg.sender, msg.sender);
                else:
                    if block.timestamp < stor23:
                        if msg.value:
                            require msg.value
                            require stor18 * msg.value / msg.value == stor18
                        require stor18 * msg.value >= 0
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require (rate * msg.value) + (stor18 * msg.value) >= stor18 * msg.value
                        require (rate * msg.value) + (stor18 * msg.value) <= stor36
                        stor36 = stor36 - (rate * msg.value) - (stor18 * msg.value)
                        require (rate * msg.value) + (stor18 * msg.value) <= stor30
                        stor30 = stor30 - (rate * msg.value) - (stor18 * msg.value)
                        require msg.value + stor4 >= stor4
                        stor4 += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (stor18 * msg.value)
                        require ext_call.success
                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor18 * msg.value), msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor24:
                            if msg.value:
                                require msg.value
                                require stor19 * msg.value / msg.value == stor19
                            require stor19 * msg.value >= 0
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require (rate * msg.value) + (stor19 * msg.value) >= stor19 * msg.value
                            require (rate * msg.value) + (stor19 * msg.value) <= stor36
                            stor36 = stor36 - (rate * msg.value) - (stor19 * msg.value)
                            require (rate * msg.value) + (stor19 * msg.value) <= stor30
                            stor30 = stor30 - (rate * msg.value) - (stor19 * msg.value)
                            require msg.value + stor4 >= stor4
                            stor4 += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (stor19 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, (rate * msg.value) + (stor19 * msg.value), msg.sender, msg.sender);
                        else:
                            if block.timestamp >= stor25:
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require rate * msg.value >= 0
                                require rate * msg.value <= stor36
                                stor36 += -1 * rate * msg.value
                                require rate * msg.value <= stor30
                                stor30 += -1 * rate * msg.value
                                require msg.value + stor4 >= stor4
                                stor4 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                            else:
                                if msg.value:
                                    require msg.value
                                    require stor20 * msg.value / msg.value == stor20
                                require stor20 * msg.value >= 0
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require (rate * msg.value) + (stor20 * msg.value) >= stor20 * msg.value
                                require (rate * msg.value) + (stor20 * msg.value) <= stor36
                                stor36 = stor36 - (rate * msg.value) - (stor20 * msg.value)
                                require (rate * msg.value) + (stor20 * msg.value) <= stor30
                                stor30 = stor30 - (rate * msg.value) - (stor20 * msg.value)
                                require msg.value + stor4 >= stor4
                                stor4 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (stor20 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, (rate * msg.value) + (stor20 * msg.value), msg.sender, msg.sender);
        else:
            if block.timestamp < preICOEndTime:
                require stor35 > 0
                require msg.value <= stor28
                if not uint8(stor37.field_16):
                    require preSaleSupply + stor35 >= stor35
                    stor35 += preSaleSupply
                    require preSaleTarget + stor28 >= stor28
                    stor28 += preSaleTarget
                    uint8(stor37.field_16) = 1
                if msg.value:
                    require msg.value
                    require stor15 * msg.value / msg.value == stor15
                require stor15 * msg.value >= 0
                if msg.value:
                    require msg.value
                    require rate * msg.value / msg.value == rate
                require (rate * msg.value) + (stor15 * msg.value) >= stor15 * msg.value
                require stor35 >= (rate * msg.value) + (stor15 * msg.value)
                require (rate * msg.value) + (stor15 * msg.value) <= stor35
                stor35 = stor35 - (rate * msg.value) - (stor15 * msg.value)
                require msg.value <= stor28
                stor28 -= msg.value
                require (rate * msg.value) + (stor15 * msg.value) <= stor30
                stor30 = stor30 - (rate * msg.value) - (stor15 * msg.value)
                require msg.value + stor4 >= stor4
                stor4 += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (rate * msg.value) + (stor15 * msg.value)
                require ext_call.success
                emit TokenPurchase(msg.value, (rate * msg.value) + (stor15 * msg.value), msg.sender, msg.sender);
            else:
                require block.timestamp >= iCOstartTime
                require block.timestamp <= iCOEndTime
                require stor36 > 0
                if not uint8(stor37.field_24):
                    require stor35 + stor36 >= stor36
                    stor36 += stor35
                    uint8(stor37.field_24) = 1
                if block.timestamp <= stor21:
                    if msg.value:
                        require msg.value
                        require stor16 * msg.value / msg.value == stor16
                    require stor16 * msg.value >= 0
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require (rate * msg.value) + (stor16 * msg.value) >= stor16 * msg.value
                    require (rate * msg.value) + (stor16 * msg.value) <= stor36
                    stor36 = stor36 - (rate * msg.value) - (stor16 * msg.value)
                    require (rate * msg.value) + (stor16 * msg.value) <= stor30
                    stor30 = stor30 - (rate * msg.value) - (stor16 * msg.value)
                    require msg.value + stor4 >= stor4
                    stor4 += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (stor16 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor16 * msg.value), msg.sender, msg.sender);
                else:
                    if block.timestamp <= stor22:
                        if msg.value:
                            require msg.value
                            require stor17 * msg.value / msg.value == stor17
                        require stor17 * msg.value >= 0
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require (rate * msg.value) + (stor17 * msg.value) >= stor17 * msg.value
                        require (rate * msg.value) + (stor17 * msg.value) <= stor36
                        stor36 = stor36 - (rate * msg.value) - (stor17 * msg.value)
                        require (rate * msg.value) + (stor17 * msg.value) <= stor30
                        stor30 = stor30 - (rate * msg.value) - (stor17 * msg.value)
                        require msg.value + stor4 >= stor4
                        stor4 += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (stor17 * msg.value)
                        require ext_call.success
                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor17 * msg.value), msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor23:
                            if msg.value:
                                require msg.value
                                require stor18 * msg.value / msg.value == stor18
                            require stor18 * msg.value >= 0
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require (rate * msg.value) + (stor18 * msg.value) >= stor18 * msg.value
                            require (rate * msg.value) + (stor18 * msg.value) <= stor36
                            stor36 = stor36 - (rate * msg.value) - (stor18 * msg.value)
                            require (rate * msg.value) + (stor18 * msg.value) <= stor30
                            stor30 = stor30 - (rate * msg.value) - (stor18 * msg.value)
                            require msg.value + stor4 >= stor4
                            stor4 += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (stor18 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, (rate * msg.value) + (stor18 * msg.value), msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor24:
                                if msg.value:
                                    require msg.value
                                    require stor19 * msg.value / msg.value == stor19
                                require stor19 * msg.value >= 0
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require (rate * msg.value) + (stor19 * msg.value) >= stor19 * msg.value
                                require (rate * msg.value) + (stor19 * msg.value) <= stor36
                                stor36 = stor36 - (rate * msg.value) - (stor19 * msg.value)
                                require (rate * msg.value) + (stor19 * msg.value) <= stor30
                                stor30 = stor30 - (rate * msg.value) - (stor19 * msg.value)
                                require msg.value + stor4 >= stor4
                                stor4 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (stor19 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, (rate * msg.value) + (stor19 * msg.value), msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor25:
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require rate * msg.value >= 0
                                    require rate * msg.value <= stor36
                                    stor36 += -1 * rate * msg.value
                                    require rate * msg.value <= stor30
                                    stor30 += -1 * rate * msg.value
                                    require msg.value + stor4 >= stor4
                                    stor4 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, rate * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require stor20 * msg.value / msg.value == stor20
                                    require stor20 * msg.value >= 0
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require (rate * msg.value) + (stor20 * msg.value) >= stor20 * msg.value
                                    require (rate * msg.value) + (stor20 * msg.value) <= stor36
                                    stor36 = stor36 - (rate * msg.value) - (stor20 * msg.value)
                                    require (rate * msg.value) + (stor20 * msg.value) <= stor30
                                    stor30 = stor30 - (rate * msg.value) - (stor20 * msg.value)
                                    require msg.value + stor4 >= stor4
                                    stor4 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (rate * msg.value) + (stor20 * msg.value)
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor20 * msg.value), msg.sender, msg.sender);
    else:
        if block.timestamp < preSaleEndTime:
            require preSaleSupply > 0
            require msg.value <= preSaleTarget
            if not uint8(stor37.field_8):
                require stor33 + preSaleSupply >= preSaleSupply
                preSaleSupply += stor33
                require stor26 + preSaleTarget >= preSaleTarget
                preSaleTarget += stor26
                uint8(stor37.field_8) = 1
            if msg.value:
                require msg.value
                require stor14 * msg.value / msg.value == stor14
            require stor14 * msg.value >= 0
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require (rate * msg.value) + (stor14 * msg.value) >= stor14 * msg.value
            require preSaleSupply >= (rate * msg.value) + (stor14 * msg.value)
            require (rate * msg.value) + (stor14 * msg.value) <= preSaleSupply
            preSaleSupply = preSaleSupply - (rate * msg.value) - (stor14 * msg.value)
            require msg.value <= preSaleTarget
            preSaleTarget -= msg.value
            require (rate * msg.value) + (stor14 * msg.value) <= stor30
            stor30 = stor30 - (rate * msg.value) - (stor14 * msg.value)
            require msg.value + stor4 >= stor4
            stor4 += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (rate * msg.value) + (stor14 * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (stor14 * msg.value), msg.sender, msg.sender);
        else:
            if block.timestamp < preICOStartTime:
                require block.timestamp >= iCOstartTime
                require block.timestamp <= iCOEndTime
                require stor36 > 0
                if not uint8(stor37.field_24):
                    require stor35 + stor36 >= stor36
                    stor36 += stor35
                    uint8(stor37.field_24) = 1
                if block.timestamp <= stor21:
                    if msg.value:
                        require msg.value
                        require stor16 * msg.value / msg.value == stor16
                    require stor16 * msg.value >= 0
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require (rate * msg.value) + (stor16 * msg.value) >= stor16 * msg.value
                    require (rate * msg.value) + (stor16 * msg.value) <= stor36
                    stor36 = stor36 - (rate * msg.value) - (stor16 * msg.value)
                    require (rate * msg.value) + (stor16 * msg.value) <= stor30
                    stor30 = stor30 - (rate * msg.value) - (stor16 * msg.value)
                    require msg.value + stor4 >= stor4
                    stor4 += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (stor16 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor16 * msg.value), msg.sender, msg.sender);
                else:
                    if block.timestamp <= stor22:
                        if msg.value:
                            require msg.value
                            require stor17 * msg.value / msg.value == stor17
                        require stor17 * msg.value >= 0
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require (rate * msg.value) + (stor17 * msg.value) >= stor17 * msg.value
                        require (rate * msg.value) + (stor17 * msg.value) <= stor36
                        stor36 = stor36 - (rate * msg.value) - (stor17 * msg.value)
                        require (rate * msg.value) + (stor17 * msg.value) <= stor30
                        stor30 = stor30 - (rate * msg.value) - (stor17 * msg.value)
                        require msg.value + stor4 >= stor4
                        stor4 += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (stor17 * msg.value)
                        require ext_call.success
                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor17 * msg.value), msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor23:
                            if msg.value:
                                require msg.value
                                require stor18 * msg.value / msg.value == stor18
                            require stor18 * msg.value >= 0
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require (rate * msg.value) + (stor18 * msg.value) >= stor18 * msg.value
                            require (rate * msg.value) + (stor18 * msg.value) <= stor36
                            stor36 = stor36 - (rate * msg.value) - (stor18 * msg.value)
                            require (rate * msg.value) + (stor18 * msg.value) <= stor30
                            stor30 = stor30 - (rate * msg.value) - (stor18 * msg.value)
                            require msg.value + stor4 >= stor4
                            stor4 += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (stor18 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, (rate * msg.value) + (stor18 * msg.value), msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor24:
                                if msg.value:
                                    require msg.value
                                    require stor19 * msg.value / msg.value == stor19
                                require stor19 * msg.value >= 0
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require (rate * msg.value) + (stor19 * msg.value) >= stor19 * msg.value
                                require (rate * msg.value) + (stor19 * msg.value) <= stor36
                                stor36 = stor36 - (rate * msg.value) - (stor19 * msg.value)
                                require (rate * msg.value) + (stor19 * msg.value) <= stor30
                                stor30 = stor30 - (rate * msg.value) - (stor19 * msg.value)
                                require msg.value + stor4 >= stor4
                                stor4 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (stor19 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, (rate * msg.value) + (stor19 * msg.value), msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor25:
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require rate * msg.value >= 0
                                    require rate * msg.value <= stor36
                                    stor36 += -1 * rate * msg.value
                                    require rate * msg.value <= stor30
                                    stor30 += -1 * rate * msg.value
                                    require msg.value + stor4 >= stor4
                                    stor4 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, rate * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require stor20 * msg.value / msg.value == stor20
                                    require stor20 * msg.value >= 0
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require (rate * msg.value) + (stor20 * msg.value) >= stor20 * msg.value
                                    require (rate * msg.value) + (stor20 * msg.value) <= stor36
                                    stor36 = stor36 - (rate * msg.value) - (stor20 * msg.value)
                                    require (rate * msg.value) + (stor20 * msg.value) <= stor30
                                    stor30 = stor30 - (rate * msg.value) - (stor20 * msg.value)
                                    require msg.value + stor4 >= stor4
                                    stor4 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (rate * msg.value) + (stor20 * msg.value)
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor20 * msg.value), msg.sender, msg.sender);
            else:
                if block.timestamp < preICOEndTime:
                    require stor35 > 0
                    require msg.value <= stor28
                    if not uint8(stor37.field_16):
                        require preSaleSupply + stor35 >= stor35
                        stor35 += preSaleSupply
                        require preSaleTarget + stor28 >= stor28
                        stor28 += preSaleTarget
                        uint8(stor37.field_16) = 1
                    if msg.value:
                        require msg.value
                        require stor15 * msg.value / msg.value == stor15
                    require stor15 * msg.value >= 0
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require (rate * msg.value) + (stor15 * msg.value) >= stor15 * msg.value
                    require stor35 >= (rate * msg.value) + (stor15 * msg.value)
                    require (rate * msg.value) + (stor15 * msg.value) <= stor35
                    stor35 = stor35 - (rate * msg.value) - (stor15 * msg.value)
                    require msg.value <= stor28
                    stor28 -= msg.value
                    require (rate * msg.value) + (stor15 * msg.value) <= stor30
                    stor30 = stor30 - (rate * msg.value) - (stor15 * msg.value)
                    require msg.value + stor4 >= stor4
                    stor4 += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (stor15 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor15 * msg.value), msg.sender, msg.sender);
                else:
                    require block.timestamp >= iCOstartTime
                    require block.timestamp <= iCOEndTime
                    require stor36 > 0
                    if not uint8(stor37.field_24):
                        require stor35 + stor36 >= stor36
                        stor36 += stor35
                        uint8(stor37.field_24) = 1
                    if block.timestamp <= stor21:
                        if msg.value:
                            require msg.value
                            require stor16 * msg.value / msg.value == stor16
                        require stor16 * msg.value >= 0
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require (rate * msg.value) + (stor16 * msg.value) >= stor16 * msg.value
                        require (rate * msg.value) + (stor16 * msg.value) <= stor36
                        stor36 = stor36 - (rate * msg.value) - (stor16 * msg.value)
                        require (rate * msg.value) + (stor16 * msg.value) <= stor30
                        stor30 = stor30 - (rate * msg.value) - (stor16 * msg.value)
                        require msg.value + stor4 >= stor4
                        stor4 += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (stor16 * msg.value)
                        require ext_call.success
                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor16 * msg.value), msg.sender, msg.sender);
                    else:
                        if block.timestamp <= stor22:
                            if msg.value:
                                require msg.value
                                require stor17 * msg.value / msg.value == stor17
                            require stor17 * msg.value >= 0
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require (rate * msg.value) + (stor17 * msg.value) >= stor17 * msg.value
                            require (rate * msg.value) + (stor17 * msg.value) <= stor36
                            stor36 = stor36 - (rate * msg.value) - (stor17 * msg.value)
                            require (rate * msg.value) + (stor17 * msg.value) <= stor30
                            stor30 = stor30 - (rate * msg.value) - (stor17 * msg.value)
                            require msg.value + stor4 >= stor4
                            stor4 += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (stor17 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, (rate * msg.value) + (stor17 * msg.value), msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor23:
                                if msg.value:
                                    require msg.value
                                    require stor18 * msg.value / msg.value == stor18
                                require stor18 * msg.value >= 0
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require (rate * msg.value) + (stor18 * msg.value) >= stor18 * msg.value
                                require (rate * msg.value) + (stor18 * msg.value) <= stor36
                                stor36 = stor36 - (rate * msg.value) - (stor18 * msg.value)
                                require (rate * msg.value) + (stor18 * msg.value) <= stor30
                                stor30 = stor30 - (rate * msg.value) - (stor18 * msg.value)
                                require msg.value + stor4 >= stor4
                                stor4 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (stor18 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, (rate * msg.value) + (stor18 * msg.value), msg.sender, msg.sender);
                            else:
                                if block.timestamp < stor24:
                                    if msg.value:
                                        require msg.value
                                        require stor19 * msg.value / msg.value == stor19
                                    require stor19 * msg.value >= 0
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require (rate * msg.value) + (stor19 * msg.value) >= stor19 * msg.value
                                    require (rate * msg.value) + (stor19 * msg.value) <= stor36
                                    stor36 = stor36 - (rate * msg.value) - (stor19 * msg.value)
                                    require (rate * msg.value) + (stor19 * msg.value) <= stor30
                                    stor30 = stor30 - (rate * msg.value) - (stor19 * msg.value)
                                    require msg.value + stor4 >= stor4
                                    stor4 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (rate * msg.value) + (stor19 * msg.value)
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor19 * msg.value), msg.sender, msg.sender);
                                else:
                                    if block.timestamp >= stor25:
                                        if msg.value:
                                            require msg.value
                                            require rate * msg.value / msg.value == rate
                                        require rate * msg.value >= 0
                                        require rate * msg.value <= stor36
                                        stor36 += -1 * rate * msg.value
                                        require rate * msg.value <= stor30
                                        stor30 += -1 * rate * msg.value
                                        require msg.value + stor4 >= stor4
                                        stor4 += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, rate * msg.value
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require stor20 * msg.value / msg.value == stor20
                                        require stor20 * msg.value >= 0
                                        if msg.value:
                                            require msg.value
                                            require rate * msg.value / msg.value == rate
                                        require (rate * msg.value) + (stor20 * msg.value) >= stor20 * msg.value
                                        require (rate * msg.value) + (stor20 * msg.value) <= stor36
                                        stor36 = stor36 - (rate * msg.value) - (stor20 * msg.value)
                                        require (rate * msg.value) + (stor20 * msg.value) <= stor30
                                        stor30 = stor30 - (rate * msg.value) - (stor20 * msg.value)
                                        require msg.value + stor4 >= stor4
                                        stor4 += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (rate * msg.value) + (stor20 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor20 * msg.value), msg.sender, msg.sender);
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
