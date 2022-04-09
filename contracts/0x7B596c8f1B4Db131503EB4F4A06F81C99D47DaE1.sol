contract main {


// =======================  Init code  ======================


uint8 stor0;
uint8 stor5;
address stor6;
mapping of uint256 stor22;
uint256 stor23;

function _fallback() payable {
    stor23 = 1
    require not msg.value
    stor6 = msg.sender
    stor22[address(msg.sender)] = 1
    stor5 = 1
    stor0 = 1
    return code.data[112 len 6248]
}



// =====================  Runtime code  =====================


uint8 required;
uint256 sub_70e25da8;
uint256 dailyLimit;
uint256 stor3;
uint256 stor4;
array of address stor5;
array of address stor6;
mapping of uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor24;
array of struct stor25;
address sub_b234a919Address;

function getRequired() {
    return required
}

function sub_70e25da8(?) {
    return sub_70e25da8
}

function getDailyLimit() {
    return dailyLimit
}

function sub_b234a919(?) {
    return sub_b234a919Address
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    return (stor22[address(arg1)] > 0)
}

function deposit(address arg1) payable {
    emit Deposit(address(arg1), msg.value, msg.sender);
}

function sub_1b39086d(?) {
    if arg1 / 24 * 3600 <= stor4:
        return stor3
    else:
        return 0
}

function sub_a9849af9(?) {
    require stor22[address(msg.sender)] > 0
    create contract with 0 wei
                    code: code.data[5753 len 452]
    require create.new_address
    emit 0x9187ab53: address(create.new_address), arg1
}

function getOwners() {
    s = 0
    idx = 0
    while uint8(idx) < 16:
        if stor6[uint8(idx)] <= 0:
            s = s
            idx = idx + 1
            continue 
        require uint8(idx) < 16
        require uint8(s) < uint8(stor5.length)
        mem[(32 * uint8(s)) + 192] = stor6[uint8(idx)]
        s = s + 1
        idx = idx + 1
        continue 
    mem[(32 * uint8(stor5.length)) + 192] = 32
    mem[(32 * uint8(stor5.length)) + 224] = uint8(stor5.length)
    if uint8(stor5.length):
        mem[(32 * uint8(stor5.length)) + 256] = mem[192]
        mem[(32 * uint8(stor5.length)) + 288 len floor32((32 * uint8(stor5.length)) - 1)] = mem[224 len floor32((32 * uint8(stor5.length)) - 1)]
    return Array(len=uint8(stor5.length), data=mem[(32 * uint8(stor5.length)) + 256 len 32 * uint8(stor5.length)])
}

function sub_288b7952(?) {
    s = 0
    idx = 0
    while uint8(idx) < stor25.length:
        mem[0] = 25
        if stor25[8 * uint8(idx)].field_0 <= 0:
            s = s
            idx = idx + 1
            continue 
        require uint8(idx) < stor25.length
        mem[0] = 25
        require uint8(s) < uint256(stor24)
        mem[(32 * uint8(s)) + 192] = stor25[8 * uint8(idx)].field_0
        s = s + 1
        idx = idx + 1
        continue 
    mem[(32 * uint256(stor24)) + 192] = 32
    mem[(32 * uint256(stor24)) + 224] = uint256(stor24)
    if Mask(251, 0, stor24):
        mem[(32 * uint256(stor24)) + 256] = mem[192]
        mem[(32 * uint256(stor24)) + 288 len floor32((32 * uint256(stor24)) - 1)] = mem[224 len floor32((32 * uint256(stor24)) - 1)]
    return Array(len=uint256(stor24), data=mem[(32 * uint256(stor24)) + 256 len 32 * uint256(stor24)])
}

function cancel(uint256 arg1) {
    require stor22[address(msg.sender)] > 0
    require arg1 > 0
    require 0 < stor25.length
    idx = 0
    while stor25[idx].field_0 != arg1:
        require idx + 1 < stor25.length
        mem[0] = 25
        idx = idx + 1
        continue 
    require None + 2 < stor25.length
    if block.timestamp - stor25[None + 2].field_512 > 300:
        emit 0x7e8e70bf: msg.sender, stor25[None + 2].field_0
        require stor25[None + 2].field_1032 <= 7
        idx = 704
        s = (8 * None + 2) + 5
        while 800 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        stor25[None + 2].field_0 = 0
        uint256(stor24)--
        require stor25[None + 2].field_1032 <= 7
        if stor25[None + 2].field_1032 == 3:
            emit 0x4d9430ac: mem[768]
}

function getRequest(uint256 arg1) {
    require 0 < stor25.length
    idx = 0
    while stor25[idx].field_0 != arg1:
        require idx + 1 < stor25.length
        mem[0] = 25
        idx = idx + 1
        continue 
    require None + 2 < stor25.length
    s = 0
    idx = 0
    while uint8(idx) < 16:
        if stor6[uint8(idx)] <= 0:
            s = s
            idx = idx + 1
            continue 
        if not uint8(2^(idx + 1) and stor25[None + 2].field_768):
            s = s
            idx = idx + 1
            continue 
        require uint8(idx) < 16
        require uint8(s) < stor25[None + 2].field_1024
        mem[(32 * uint8(s)) + 288] = stor6[uint8(idx)]
        s = s + 1
        idx = idx + 1
        continue 
    mem[(32 * stor25[None + 2].field_1024) + 288] = stor25[None + 2].field_1280
    idx = (32 * stor25[None + 2].field_1024) + 288
    s = (8 * None + 2) + 5
    while (32 * stor25[None + 2].field_1024) + 384 > idx + 32:
        mem[idx + 32] = stor25[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor25[None + 2].field_1024) + 384] = stor25[None + 2].field_256
    mem[(32 * stor25[None + 2].field_1024) + 416] = stor25[None + 2].field_512
    require stor25[None + 2].field_1032 <= 7
    mem[(32 * stor25[None + 2].field_1024) + 480] = stor25[None + 2].field_1032
    mem[(32 * stor25[None + 2].field_1024) + 512] = stor25[None + 2].field_1280
    mem[(32 * stor25[None + 2].field_1024) + 544 len 64] = mem[(32 * stor25[None + 2].field_1024) + 320 len 64]
    s = (32 * stor25[None + 2].field_1024) + 352
    idx = (32 * stor25[None + 2].field_1024) + 576
    mem[(32 * stor25[None + 2].field_1024) + 448] = 224
    mem[(32 * stor25[None + 2].field_1024) + 608] = stor25[None + 2].field_1024
    if stor25[None + 2].field_1024:
        mem[(32 * stor25[None + 2].field_1024) + 640] = mem[288]
        mem[(32 * stor25[None + 2].field_1024) + 672 len floor32((32 * stor25[None + 2].field_1024) - 1)] = mem[320 len floor32((32 * stor25[None + 2].field_1024) - 1)]
    return stor25[None + 2].field_256, 
           stor25[None + 2].field_512,
           224,
           stor25[None + 2].field_1024,
           stor25[None + 2].field_1280,
           mem[(32 * stor25[None + 2].field_1024) + 320 len 64],
           stor25[None + 2].field_1024,
           mem[(32 * stor25[None + 2].field_1024) + 640 len 32 * stor25[None + 2].field_1024]
}

function approve(uint256 arg1) {
    require stor22[address(msg.sender)] > 0
    require arg1 > 0
    require 0 < stor25.length
    idx = 0
    while stor25[idx].field_0 != arg1:
        require idx + 1 < stor25.length
        mem[0] = 25
        idx = idx + 1
        continue 
    require None + 2 < stor25.length
    if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
        emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
        if stor25[None + 2].field_1024 < uint8(required - 1):
            stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
            stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
        else:
            emit 0xe78cc898: stor25[None + 2].field_0
            require stor25[None + 2].field_1032 <= 7
            idx = 704
            s = (8 * None + 2) + 5
            while 800 > idx + 32:
                mem[idx + 32] = stor25[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            stor25[None + 2].field_0 = 0
            uint256(stor24)--
            require stor25[None + 2].field_1032 <= 7
            if stor25[None + 2].field_1032 == 3:
                require mem[736] <= eth.balance(this.address)
                if block.timestamp / 24 * 3600 <= stor4:
                    stor3 += mem[736]
                else:
                    stor4 = block.timestamp / 24 * 3600
                    stor3 = mem[736]
                call stor25[None + 2].field_1280 with:
                   value mem[736] wei
                     gas 100000 wei
                emit 0xa522f866: stor25[None + 2].field_1280, mem[736], not ext_call.success, stor25[None + 2].field_0, mem[768]
            else:
                require stor25[None + 2].field_1032 <= 7
                if stor25[None + 2].field_1032 == 4:
                    sub_70e25da8 = stor25[None + 2].field_1280
                else:
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 5:
                        dailyLimit = stor25[None + 2].field_1280
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 6:
                            stor3 = 0
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 2:
                                if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                    if stor25[None + 2].field_1280 > 0:
                                        required = stor25[None + 2].field_1280
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if not stor25[None + 2].field_1032:
                                    if stor22[stor25[None + 2].field_1280] <= 0:
                                        idx = 0
                                        while idx < 16:
                                            if stor6[idx]:
                                                idx = idx + 1
                                                continue 
                                            require idx < 16
                                            stor6[idx] = stor25[None + 2].field_1280
                                            stor22[stor25[None + 2].field_1280] = idx + 1
                                            uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if stor25[None + 2].field_1032 != 1:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 == 7:
                                            call stor25[None + 2].field_1280 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                sub_b234a919Address = stor25[None + 2].field_1280
                                    else:
                                        if uint8(stor5.length) > 1:
                                            if stor22[stor25[None + 2].field_1280] > 0:
                                                uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                if uint8(uint8(stor5.length) - 1) < required:
                                                    required = uint8(stor5.length)
                                                require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                stor22[stor25[None + 2].field_1280] = 0
}

function sub_dae39e50(?) {
    require stor22[address(msg.sender)] > 0
    idx = 0
    s = 0
    while idx < stor25.length:
        mem[0] = 25
        if stor25[idx].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor25.length
        mem[0] = 25
        if stor25[idx].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint8(s) < 50
    if stor25.length != uint256(stor24):
        require 0 < stor25.length
        idx = 0
        while stor25[idx].field_0:
            require idx + 1 < stor25.length
            mem[0] = 25
            idx = idx + 1
            continue 
        require None + 2 < stor25.length
        stor23++
        stor25[None + 2].field_0 = stor23 + 1
        stor25[None + 2].field_256 = msg.sender
        stor25[None + 2].field_512 = block.timestamp
        stor25[None + 2].field_768 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1032 = 6
        stor25[None + 2].field_1280 = 0
        stor25[None + 2].field_1536 = 0
        stor25[None + 2].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * None + 2) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 6
        if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
            emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
            if stor25[None + 2].field_1024 < uint8(required - 1):
                stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
            else:
                emit 0xe78cc898: stor25[None + 2].field_0
                require stor25[None + 2].field_1032 <= 7
                idx = 896
                s = (8 * None + 2) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[None + 2].field_0 = 0
                uint256(stor24)--
                require stor25[None + 2].field_1032 <= 7
                if stor25[None + 2].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[None + 2].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                else:
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 4:
                        sub_70e25da8 = stor25[None + 2].field_1280
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 5:
                            dailyLimit = stor25[None + 2].field_1280
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 2:
                                    if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                        if stor25[None + 2].field_1280 > 0:
                                            required = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if not stor25[None + 2].field_1032:
                                        if stor22[stor25[None + 2].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[None + 2].field_1280
                                                stor22[stor25[None + 2].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 != 1:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 7:
                                                call stor25[None + 2].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[None + 2].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[None + 2].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                    stor22[stor25[None + 2].field_1280] = 0
    else:
        stor25.length++
        if not stor25.length <= stor25.length + 1:
            idx = 8 * stor25.length + 1
            while 8 * stor25.length > idx:
                stor25[idx].field_0 = 0
                stor25[idx].field_256 = 0
                stor25[idx].field_512 = 0
                stor25[idx].field_768 = 0
                stor25[idx].field_1024 = 0
                stor25[idx].field_1280 = 0
                stor25[idx].field_1536 = 0
                stor25[idx].field_1792 = 0
                idx = idx + 8
                continue 
        require stor25.length - 1 < stor25.length
        stor23++
        stor25[stor25.length - 1].field_0 = stor23 + 1
        stor25[stor25.length - 1].field_256 = msg.sender
        stor25[stor25.length - 1].field_512 = block.timestamp
        stor25[stor25.length - 1].field_768 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1032 = 6
        stor25[stor25.length - 1].field_1280 = 0
        stor25[stor25.length - 1].field_1536 = 0
        stor25[stor25.length - 1].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * stor25.length - 1) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 6
        if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
            emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
            if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
            else:
                emit 0xe78cc898: stor25[stor25.length - 1].field_0
                require stor25[stor25.length - 1].field_1032 <= 7
                idx = 896
                s = (8 * stor25.length - 1) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[stor25.length - 1].field_0 = 0
                uint256(stor24)--
                require stor25[stor25.length - 1].field_1032 <= 7
                if stor25[stor25.length - 1].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[stor25.length - 1].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                else:
                    require stor25[stor25.length - 1].field_1032 <= 7
                    if stor25[stor25.length - 1].field_1032 == 4:
                        sub_70e25da8 = stor25[stor25.length - 1].field_1280
                    else:
                        require stor25[stor25.length - 1].field_1032 <= 7
                        if stor25[stor25.length - 1].field_1032 == 5:
                            dailyLimit = stor25[stor25.length - 1].field_1280
                        else:
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 2:
                                    if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                        if stor25[stor25.length - 1].field_1280 > 0:
                                            required = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if not stor25[stor25.length - 1].field_1032:
                                        if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[stor25.length - 1].field_1280
                                                stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 != 1:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 7:
                                                call stor25[stor25.length - 1].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                    stor22[stor25[stor25.length - 1].field_1280] = 0
}

function addOwner(address arg1) {
    require stor22[address(msg.sender)] > 0
    idx = 0
    s = 0
    while idx < stor25.length:
        mem[0] = 25
        if stor25[idx].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor25.length
        mem[0] = 25
        if stor25[idx].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint8(s) < 50
    if stor25.length != uint256(stor24):
        require 0 < stor25.length
        idx = 0
        while stor25[idx].field_0:
            require idx + 1 < stor25.length
            mem[0] = 25
            idx = idx + 1
            continue 
        require None + 2 < stor25.length
        stor23++
        stor25[None + 2].field_0 = stor23 + 1
        stor25[None + 2].field_256 = msg.sender
        stor25[None + 2].field_512 = block.timestamp
        stor25[None + 2].field_768 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1280 = arg1
        stor25[None + 2].field_1440 = 0
        stor25[None + 2].field_1536 = 0
        stor25[None + 2].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * None + 2) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 0
        if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
            emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
            if stor25[None + 2].field_1024 < uint8(required - 1):
                stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
            else:
                emit 0xe78cc898: stor25[None + 2].field_0
                require stor25[None + 2].field_1032 <= 7
                idx = 896
                s = (8 * None + 2) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[None + 2].field_0 = 0
                uint256(stor24)--
                require stor25[None + 2].field_1032 <= 7
                if stor25[None + 2].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[None + 2].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                else:
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 4:
                        sub_70e25da8 = stor25[None + 2].field_1280
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 5:
                            dailyLimit = stor25[None + 2].field_1280
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 2:
                                    if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                        if stor25[None + 2].field_1280 > 0:
                                            required = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if not stor25[None + 2].field_1032:
                                        if stor22[stor25[None + 2].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[None + 2].field_1280
                                                stor22[stor25[None + 2].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 != 1:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 7:
                                                call stor25[None + 2].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[None + 2].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[None + 2].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                    stor22[stor25[None + 2].field_1280] = 0
    else:
        stor25.length++
        if not stor25.length <= stor25.length + 1:
            idx = 8 * stor25.length + 1
            while 8 * stor25.length > idx:
                stor25[idx].field_0 = 0
                stor25[idx].field_256 = 0
                stor25[idx].field_512 = 0
                stor25[idx].field_768 = 0
                stor25[idx].field_1024 = 0
                stor25[idx].field_1280 = 0
                stor25[idx].field_1536 = 0
                stor25[idx].field_1792 = 0
                idx = idx + 8
                continue 
        require stor25.length - 1 < stor25.length
        stor23++
        stor25[stor25.length - 1].field_0 = stor23 + 1
        stor25[stor25.length - 1].field_256 = msg.sender
        stor25[stor25.length - 1].field_512 = block.timestamp
        stor25[stor25.length - 1].field_768 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1280 = arg1
        stor25[stor25.length - 1].field_1440 = 0
        stor25[stor25.length - 1].field_1536 = 0
        stor25[stor25.length - 1].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * stor25.length - 1) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 0
        if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
            emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
            if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
            else:
                emit 0xe78cc898: stor25[stor25.length - 1].field_0
                require stor25[stor25.length - 1].field_1032 <= 7
                idx = 896
                s = (8 * stor25.length - 1) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[stor25.length - 1].field_0 = 0
                uint256(stor24)--
                require stor25[stor25.length - 1].field_1032 <= 7
                if stor25[stor25.length - 1].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[stor25.length - 1].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                else:
                    require stor25[stor25.length - 1].field_1032 <= 7
                    if stor25[stor25.length - 1].field_1032 == 4:
                        sub_70e25da8 = stor25[stor25.length - 1].field_1280
                    else:
                        require stor25[stor25.length - 1].field_1032 <= 7
                        if stor25[stor25.length - 1].field_1032 == 5:
                            dailyLimit = stor25[stor25.length - 1].field_1280
                        else:
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 2:
                                    if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                        if stor25[stor25.length - 1].field_1280 > 0:
                                            required = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if not stor25[stor25.length - 1].field_1032:
                                        if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[stor25.length - 1].field_1280
                                                stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 != 1:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 7:
                                                call stor25[stor25.length - 1].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                    stor22[stor25[stor25.length - 1].field_1280] = 0
}

function setTxLimit(uint256 arg1) {
    require stor22[address(msg.sender)] > 0
    idx = 0
    s = 0
    while idx < stor25.length:
        mem[0] = 25
        if stor25[idx].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor25.length
        mem[0] = 25
        if stor25[idx].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint8(s) < 50
    if stor25.length != uint256(stor24):
        require 0 < stor25.length
        idx = 0
        while stor25[idx].field_0:
            require idx + 1 < stor25.length
            mem[0] = 25
            idx = idx + 1
            continue 
        require None + 2 < stor25.length
        stor23++
        stor25[None + 2].field_0 = stor23 + 1
        stor25[None + 2].field_256 = msg.sender
        stor25[None + 2].field_512 = block.timestamp
        stor25[None + 2].field_768 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1032 = 4
        stor25[None + 2].field_1280 = arg1
        stor25[None + 2].field_1536 = 0
        stor25[None + 2].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * None + 2) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 4
        if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
            emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
            if stor25[None + 2].field_1024 < uint8(required - 1):
                stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
            else:
                emit 0xe78cc898: stor25[None + 2].field_0
                require stor25[None + 2].field_1032 <= 7
                idx = 896
                s = (8 * None + 2) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[None + 2].field_0 = 0
                uint256(stor24)--
                require stor25[None + 2].field_1032 <= 7
                if stor25[None + 2].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[None + 2].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                else:
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 4:
                        sub_70e25da8 = stor25[None + 2].field_1280
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 5:
                            dailyLimit = stor25[None + 2].field_1280
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 2:
                                    if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                        if stor25[None + 2].field_1280 > 0:
                                            required = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if not stor25[None + 2].field_1032:
                                        if stor22[stor25[None + 2].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[None + 2].field_1280
                                                stor22[stor25[None + 2].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 != 1:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 7:
                                                call stor25[None + 2].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[None + 2].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[None + 2].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                    stor22[stor25[None + 2].field_1280] = 0
    else:
        stor25.length++
        if not stor25.length <= stor25.length + 1:
            idx = 8 * stor25.length + 1
            while 8 * stor25.length > idx:
                stor25[idx].field_0 = 0
                stor25[idx].field_256 = 0
                stor25[idx].field_512 = 0
                stor25[idx].field_768 = 0
                stor25[idx].field_1024 = 0
                stor25[idx].field_1280 = 0
                stor25[idx].field_1536 = 0
                stor25[idx].field_1792 = 0
                idx = idx + 8
                continue 
        require stor25.length - 1 < stor25.length
        stor23++
        stor25[stor25.length - 1].field_0 = stor23 + 1
        stor25[stor25.length - 1].field_256 = msg.sender
        stor25[stor25.length - 1].field_512 = block.timestamp
        stor25[stor25.length - 1].field_768 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1032 = 4
        stor25[stor25.length - 1].field_1280 = arg1
        stor25[stor25.length - 1].field_1536 = 0
        stor25[stor25.length - 1].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * stor25.length - 1) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 4
        if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
            emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
            if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
            else:
                emit 0xe78cc898: stor25[stor25.length - 1].field_0
                require stor25[stor25.length - 1].field_1032 <= 7
                idx = 896
                s = (8 * stor25.length - 1) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[stor25.length - 1].field_0 = 0
                uint256(stor24)--
                require stor25[stor25.length - 1].field_1032 <= 7
                if stor25[stor25.length - 1].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[stor25.length - 1].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                else:
                    require stor25[stor25.length - 1].field_1032 <= 7
                    if stor25[stor25.length - 1].field_1032 == 4:
                        sub_70e25da8 = stor25[stor25.length - 1].field_1280
                    else:
                        require stor25[stor25.length - 1].field_1032 <= 7
                        if stor25[stor25.length - 1].field_1032 == 5:
                            dailyLimit = stor25[stor25.length - 1].field_1280
                        else:
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 2:
                                    if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                        if stor25[stor25.length - 1].field_1280 > 0:
                                            required = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if not stor25[stor25.length - 1].field_1032:
                                        if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[stor25.length - 1].field_1280
                                                stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 != 1:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 7:
                                                call stor25[stor25.length - 1].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                    stor22[stor25[stor25.length - 1].field_1280] = 0
}

function setDailyLimit(uint256 arg1) {
    require stor22[address(msg.sender)] > 0
    idx = 0
    s = 0
    while idx < stor25.length:
        mem[0] = 25
        if stor25[idx].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor25.length
        mem[0] = 25
        if stor25[idx].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint8(s) < 50
    if stor25.length != uint256(stor24):
        require 0 < stor25.length
        idx = 0
        while stor25[idx].field_0:
            require idx + 1 < stor25.length
            mem[0] = 25
            idx = idx + 1
            continue 
        require None + 2 < stor25.length
        stor23++
        stor25[None + 2].field_0 = stor23 + 1
        stor25[None + 2].field_256 = msg.sender
        stor25[None + 2].field_512 = block.timestamp
        stor25[None + 2].field_768 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1032 = 5
        stor25[None + 2].field_1280 = arg1
        stor25[None + 2].field_1536 = 0
        stor25[None + 2].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * None + 2) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 5
        if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
            emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
            if stor25[None + 2].field_1024 < uint8(required - 1):
                stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
            else:
                emit 0xe78cc898: stor25[None + 2].field_0
                require stor25[None + 2].field_1032 <= 7
                idx = 896
                s = (8 * None + 2) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[None + 2].field_0 = 0
                uint256(stor24)--
                require stor25[None + 2].field_1032 <= 7
                if stor25[None + 2].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[None + 2].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                else:
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 4:
                        sub_70e25da8 = stor25[None + 2].field_1280
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 5:
                            dailyLimit = stor25[None + 2].field_1280
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 2:
                                    if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                        if stor25[None + 2].field_1280 > 0:
                                            required = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if not stor25[None + 2].field_1032:
                                        if stor22[stor25[None + 2].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[None + 2].field_1280
                                                stor22[stor25[None + 2].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 != 1:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 7:
                                                call stor25[None + 2].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[None + 2].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[None + 2].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                    stor22[stor25[None + 2].field_1280] = 0
    else:
        stor25.length++
        if not stor25.length <= stor25.length + 1:
            idx = 8 * stor25.length + 1
            while 8 * stor25.length > idx:
                stor25[idx].field_0 = 0
                stor25[idx].field_256 = 0
                stor25[idx].field_512 = 0
                stor25[idx].field_768 = 0
                stor25[idx].field_1024 = 0
                stor25[idx].field_1280 = 0
                stor25[idx].field_1536 = 0
                stor25[idx].field_1792 = 0
                idx = idx + 8
                continue 
        require stor25.length - 1 < stor25.length
        stor23++
        stor25[stor25.length - 1].field_0 = stor23 + 1
        stor25[stor25.length - 1].field_256 = msg.sender
        stor25[stor25.length - 1].field_512 = block.timestamp
        stor25[stor25.length - 1].field_768 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1032 = 5
        stor25[stor25.length - 1].field_1280 = arg1
        stor25[stor25.length - 1].field_1536 = 0
        stor25[stor25.length - 1].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * stor25.length - 1) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 5
        if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
            emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
            if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
            else:
                emit 0xe78cc898: stor25[stor25.length - 1].field_0
                require stor25[stor25.length - 1].field_1032 <= 7
                idx = 896
                s = (8 * stor25.length - 1) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[stor25.length - 1].field_0 = 0
                uint256(stor24)--
                require stor25[stor25.length - 1].field_1032 <= 7
                if stor25[stor25.length - 1].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[stor25.length - 1].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                else:
                    require stor25[stor25.length - 1].field_1032 <= 7
                    if stor25[stor25.length - 1].field_1032 == 4:
                        sub_70e25da8 = stor25[stor25.length - 1].field_1280
                    else:
                        require stor25[stor25.length - 1].field_1032 <= 7
                        if stor25[stor25.length - 1].field_1032 == 5:
                            dailyLimit = stor25[stor25.length - 1].field_1280
                        else:
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 2:
                                    if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                        if stor25[stor25.length - 1].field_1280 > 0:
                                            required = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if not stor25[stor25.length - 1].field_1032:
                                        if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[stor25.length - 1].field_1280
                                                stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 != 1:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 7:
                                                call stor25[stor25.length - 1].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                    stor22[stor25[stor25.length - 1].field_1280] = 0
}

function setRequired(uint256 arg1) {
    require arg1 >= 1
    require stor22[address(msg.sender)] > 0
    idx = 0
    s = 0
    while idx < stor25.length:
        mem[0] = 25
        if stor25[idx].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor25.length
        mem[0] = 25
        if stor25[idx].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint8(s) < 50
    if stor25.length != uint256(stor24):
        require 0 < stor25.length
        idx = 0
        while stor25[idx].field_0:
            require idx + 1 < stor25.length
            mem[0] = 25
            idx = idx + 1
            continue 
        require None + 2 < stor25.length
        stor23++
        stor25[None + 2].field_0 = stor23 + 1
        stor25[None + 2].field_256 = msg.sender
        stor25[None + 2].field_512 = block.timestamp
        stor25[None + 2].field_768 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1032 = 2
        stor25[None + 2].field_1280 = arg1
        stor25[None + 2].field_1536 = 0
        stor25[None + 2].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * None + 2) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 2
        if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
            emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
            if stor25[None + 2].field_1024 < uint8(required - 1):
                stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
            else:
                emit 0xe78cc898: stor25[None + 2].field_0
                require stor25[None + 2].field_1032 <= 7
                idx = 896
                s = (8 * None + 2) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[None + 2].field_0 = 0
                uint256(stor24)--
                require stor25[None + 2].field_1032 <= 7
                if stor25[None + 2].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[None + 2].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                else:
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 4:
                        sub_70e25da8 = stor25[None + 2].field_1280
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 5:
                            dailyLimit = stor25[None + 2].field_1280
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 2:
                                    if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                        if stor25[None + 2].field_1280 > 0:
                                            required = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if not stor25[None + 2].field_1032:
                                        if stor22[stor25[None + 2].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[None + 2].field_1280
                                                stor22[stor25[None + 2].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 != 1:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 7:
                                                call stor25[None + 2].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[None + 2].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[None + 2].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                    stor22[stor25[None + 2].field_1280] = 0
    else:
        stor25.length++
        if not stor25.length <= stor25.length + 1:
            idx = 8 * stor25.length + 1
            while 8 * stor25.length > idx:
                stor25[idx].field_0 = 0
                stor25[idx].field_256 = 0
                stor25[idx].field_512 = 0
                stor25[idx].field_768 = 0
                stor25[idx].field_1024 = 0
                stor25[idx].field_1280 = 0
                stor25[idx].field_1536 = 0
                stor25[idx].field_1792 = 0
                idx = idx + 8
                continue 
        require stor25.length - 1 < stor25.length
        stor23++
        stor25[stor25.length - 1].field_0 = stor23 + 1
        stor25[stor25.length - 1].field_256 = msg.sender
        stor25[stor25.length - 1].field_512 = block.timestamp
        stor25[stor25.length - 1].field_768 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1032 = 2
        stor25[stor25.length - 1].field_1280 = arg1
        stor25[stor25.length - 1].field_1536 = 0
        stor25[stor25.length - 1].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * stor25.length - 1) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 2
        if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
            emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
            if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
            else:
                emit 0xe78cc898: stor25[stor25.length - 1].field_0
                require stor25[stor25.length - 1].field_1032 <= 7
                idx = 896
                s = (8 * stor25.length - 1) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[stor25.length - 1].field_0 = 0
                uint256(stor24)--
                require stor25[stor25.length - 1].field_1032 <= 7
                if stor25[stor25.length - 1].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[stor25.length - 1].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                else:
                    require stor25[stor25.length - 1].field_1032 <= 7
                    if stor25[stor25.length - 1].field_1032 == 4:
                        sub_70e25da8 = stor25[stor25.length - 1].field_1280
                    else:
                        require stor25[stor25.length - 1].field_1032 <= 7
                        if stor25[stor25.length - 1].field_1032 == 5:
                            dailyLimit = stor25[stor25.length - 1].field_1280
                        else:
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 2:
                                    if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                        if stor25[stor25.length - 1].field_1280 > 0:
                                            required = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if not stor25[stor25.length - 1].field_1032:
                                        if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[stor25.length - 1].field_1280
                                                stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 != 1:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 7:
                                                call stor25[stor25.length - 1].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                    stor22[stor25[stor25.length - 1].field_1280] = 0
}

function upgrade(address arg1) {
    require stor22[address(msg.sender)] > 0
    idx = 0
    s = 0
    while idx < stor25.length:
        mem[0] = 25
        if stor25[idx].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor25.length
        mem[0] = 25
        if stor25[idx].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint8(s) < 50
    if stor25.length != uint256(stor24):
        require 0 < stor25.length
        idx = 0
        while stor25[idx].field_0:
            require idx + 1 < stor25.length
            mem[0] = 25
            idx = idx + 1
            continue 
        require None + 2 < stor25.length
        stor23++
        stor25[None + 2].field_0 = stor23 + 1
        stor25[None + 2].field_256 = msg.sender
        stor25[None + 2].field_512 = block.timestamp
        stor25[None + 2].field_768 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1032 = 7
        stor25[None + 2].field_1280 = arg1
        stor25[None + 2].field_1440 = 0
        stor25[None + 2].field_1536 = 0
        stor25[None + 2].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * None + 2) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 7
        if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
            emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
            if stor25[None + 2].field_1024 < uint8(required - 1):
                stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
            else:
                emit 0xe78cc898: stor25[None + 2].field_0
                require stor25[None + 2].field_1032 <= 7
                idx = 896
                s = (8 * None + 2) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[None + 2].field_0 = 0
                uint256(stor24)--
                require stor25[None + 2].field_1032 <= 7
                if stor25[None + 2].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[None + 2].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                else:
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 4:
                        sub_70e25da8 = stor25[None + 2].field_1280
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 5:
                            dailyLimit = stor25[None + 2].field_1280
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 2:
                                    if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                        if stor25[None + 2].field_1280 > 0:
                                            required = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if not stor25[None + 2].field_1032:
                                        if stor22[stor25[None + 2].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[None + 2].field_1280
                                                stor22[stor25[None + 2].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 != 1:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 7:
                                                call stor25[None + 2].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[None + 2].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[None + 2].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                    stor22[stor25[None + 2].field_1280] = 0
    else:
        stor25.length++
        if not stor25.length <= stor25.length + 1:
            idx = 8 * stor25.length + 1
            while 8 * stor25.length > idx:
                stor25[idx].field_0 = 0
                stor25[idx].field_256 = 0
                stor25[idx].field_512 = 0
                stor25[idx].field_768 = 0
                stor25[idx].field_1024 = 0
                stor25[idx].field_1280 = 0
                stor25[idx].field_1536 = 0
                stor25[idx].field_1792 = 0
                idx = idx + 8
                continue 
        require stor25.length - 1 < stor25.length
        stor23++
        stor25[stor25.length - 1].field_0 = stor23 + 1
        stor25[stor25.length - 1].field_256 = msg.sender
        stor25[stor25.length - 1].field_512 = block.timestamp
        stor25[stor25.length - 1].field_768 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1032 = 7
        stor25[stor25.length - 1].field_1280 = arg1
        stor25[stor25.length - 1].field_1440 = 0
        stor25[stor25.length - 1].field_1536 = 0
        stor25[stor25.length - 1].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * stor25.length - 1) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 7
        if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
            emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
            if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
            else:
                emit 0xe78cc898: stor25[stor25.length - 1].field_0
                require stor25[stor25.length - 1].field_1032 <= 7
                idx = 896
                s = (8 * stor25.length - 1) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[stor25.length - 1].field_0 = 0
                uint256(stor24)--
                require stor25[stor25.length - 1].field_1032 <= 7
                if stor25[stor25.length - 1].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[stor25.length - 1].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                else:
                    require stor25[stor25.length - 1].field_1032 <= 7
                    if stor25[stor25.length - 1].field_1032 == 4:
                        sub_70e25da8 = stor25[stor25.length - 1].field_1280
                    else:
                        require stor25[stor25.length - 1].field_1032 <= 7
                        if stor25[stor25.length - 1].field_1032 == 5:
                            dailyLimit = stor25[stor25.length - 1].field_1280
                        else:
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 2:
                                    if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                        if stor25[stor25.length - 1].field_1280 > 0:
                                            required = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if not stor25[stor25.length - 1].field_1032:
                                        if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[stor25.length - 1].field_1280
                                                stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 != 1:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 7:
                                                call stor25[stor25.length - 1].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                    stor22[stor25[stor25.length - 1].field_1280] = 0
}

function removeOwner(address arg1) {
    require stor22[address(msg.sender)] > 0
    idx = 0
    s = 0
    while idx < stor25.length:
        mem[0] = 25
        if stor25[idx].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor25.length
        mem[0] = 25
        if stor25[idx].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint8(s) < 50
    if stor25.length != uint256(stor24):
        require 0 < stor25.length
        idx = 0
        while stor25[idx].field_0:
            require idx + 1 < stor25.length
            mem[0] = 25
            idx = idx + 1
            continue 
        require None + 2 < stor25.length
        stor23++
        stor25[None + 2].field_0 = stor23 + 1
        stor25[None + 2].field_256 = msg.sender
        stor25[None + 2].field_512 = block.timestamp
        stor25[None + 2].field_768 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1024 = 0
        stor25[None + 2].field_1032 = 1
        stor25[None + 2].field_1280 = arg1
        stor25[None + 2].field_1440 = 0
        stor25[None + 2].field_1536 = 0
        stor25[None + 2].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * None + 2) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 1
        if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
            emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
            if stor25[None + 2].field_1024 < uint8(required - 1):
                stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
            else:
                emit 0xe78cc898: stor25[None + 2].field_0
                require stor25[None + 2].field_1032 <= 7
                idx = 896
                s = (8 * None + 2) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[None + 2].field_0 = 0
                uint256(stor24)--
                require stor25[None + 2].field_1032 <= 7
                if stor25[None + 2].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[None + 2].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                else:
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 4:
                        sub_70e25da8 = stor25[None + 2].field_1280
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 5:
                            dailyLimit = stor25[None + 2].field_1280
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 2:
                                    if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                        if stor25[None + 2].field_1280 > 0:
                                            required = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if not stor25[None + 2].field_1032:
                                        if stor22[stor25[None + 2].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[None + 2].field_1280
                                                stor22[stor25[None + 2].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 != 1:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 7:
                                                call stor25[None + 2].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[None + 2].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[None + 2].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                    stor22[stor25[None + 2].field_1280] = 0
    else:
        stor25.length++
        if not stor25.length <= stor25.length + 1:
            idx = 8 * stor25.length + 1
            while 8 * stor25.length > idx:
                stor25[idx].field_0 = 0
                stor25[idx].field_256 = 0
                stor25[idx].field_512 = 0
                stor25[idx].field_768 = 0
                stor25[idx].field_1024 = 0
                stor25[idx].field_1280 = 0
                stor25[idx].field_1536 = 0
                stor25[idx].field_1792 = 0
                idx = idx + 8
                continue 
        require stor25.length - 1 < stor25.length
        stor23++
        stor25[stor25.length - 1].field_0 = stor23 + 1
        stor25[stor25.length - 1].field_256 = msg.sender
        stor25[stor25.length - 1].field_512 = block.timestamp
        stor25[stor25.length - 1].field_768 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1024 = 0
        stor25[stor25.length - 1].field_1032 = 1
        stor25[stor25.length - 1].field_1280 = arg1
        stor25[stor25.length - 1].field_1440 = 0
        stor25[stor25.length - 1].field_1536 = 0
        stor25[stor25.length - 1].field_1792 = 0
        uint256(stor24)++
        idx = 192
        s = (8 * stor25.length - 1) + 5
        while 288 > idx + 32:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 1
        if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
            emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
            if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
            else:
                emit 0xe78cc898: stor25[stor25.length - 1].field_0
                require stor25[stor25.length - 1].field_1032 <= 7
                idx = 896
                s = (8 * stor25.length - 1) + 5
                while 992 > idx + 32:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor25[stor25.length - 1].field_0 = 0
                uint256(stor24)--
                require stor25[stor25.length - 1].field_1032 <= 7
                if stor25[stor25.length - 1].field_1032 == 3:
                    require mem[928] <= eth.balance(this.address)
                    if block.timestamp / 24 * 3600 <= stor4:
                        stor3 += mem[928]
                    else:
                        stor4 = block.timestamp / 24 * 3600
                        stor3 = mem[928]
                    call stor25[stor25.length - 1].field_1280 with:
                       value mem[928] wei
                         gas 100000 wei
                    emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                else:
                    require stor25[stor25.length - 1].field_1032 <= 7
                    if stor25[stor25.length - 1].field_1032 == 4:
                        sub_70e25da8 = stor25[stor25.length - 1].field_1280
                    else:
                        require stor25[stor25.length - 1].field_1032 <= 7
                        if stor25[stor25.length - 1].field_1032 == 5:
                            dailyLimit = stor25[stor25.length - 1].field_1280
                        else:
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 6:
                                stor3 = 0
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 2:
                                    if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                        if stor25[stor25.length - 1].field_1280 > 0:
                                            required = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if not stor25[stor25.length - 1].field_1032:
                                        if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                            idx = 0
                                            while idx < 16:
                                                if stor6[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < 16
                                                stor6[idx] = stor25[stor25.length - 1].field_1280
                                                stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 != 1:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 7:
                                                call stor25[stor25.length - 1].field_1280 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                        else:
                                            if uint8(stor5.length) > 1:
                                                if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                    if uint8(uint8(stor5.length) - 1) < required:
                                                        required = uint8(stor5.length)
                                                    require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                    address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                    stor22[stor25[stor25.length - 1].field_1280] = 0
}

function withdraw(address arg1, uint256 arg2, uint256 arg3) {
    require arg2 <= eth.balance(this.address)
    require stor22[address(msg.sender)] > 0
    if arg2 > sub_70e25da8:
        idx = 0
        s = 0
        while idx < stor25.length:
            mem[0] = 25
            if stor25[idx].field_0 <= 0:
                idx = idx + 1
                s = s
                continue 
            require idx < stor25.length
            mem[0] = 25
            if stor25[idx].field_256 != msg.sender:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require uint8(s) < 50
        if stor25.length != uint256(stor24):
            require 0 < stor25.length
            idx = 0
            while stor25[idx].field_0:
                require idx + 1 < stor25.length
                mem[0] = 25
                idx = idx + 1
                continue 
            require None + 2 < stor25.length
            stor23++
            stor25[None + 2].field_0 = stor23 + 1
            stor25[None + 2].field_256 = msg.sender
            stor25[None + 2].field_512 = block.timestamp
            stor25[None + 2].field_768 = 0
            stor25[None + 2].field_1024 = 0
            stor25[None + 2].field_1024 = 0
            stor25[None + 2].field_1032 = 3
            stor25[None + 2].field_1280 = arg1
            stor25[None + 2].field_1440 = 0
            stor25[None + 2].field_1536 = arg2
            stor25[None + 2].field_1792 = arg3
            uint256(stor24)++
            idx = 192
            s = (8 * None + 2) + 5
            while 288 > idx + 32:
                mem[idx + 32] = stor25[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 3
            if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
                emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
                if stor25[None + 2].field_1024 < uint8(required - 1):
                    stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                    stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
                else:
                    emit 0xe78cc898: stor25[None + 2].field_0
                    require stor25[None + 2].field_1032 <= 7
                    idx = 896
                    s = (8 * None + 2) + 5
                    while 992 > idx + 32:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor25[None + 2].field_0 = 0
                    uint256(stor24)--
                    require stor25[None + 2].field_1032 <= 7
                    if stor25[None + 2].field_1032 == 3:
                        require mem[928] <= eth.balance(this.address)
                        if block.timestamp / 24 * 3600 <= stor4:
                            stor3 += mem[928]
                        else:
                            stor4 = block.timestamp / 24 * 3600
                            stor3 = mem[928]
                        call stor25[None + 2].field_1280 with:
                           value mem[928] wei
                             gas 100000 wei
                        emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                    else:
                        require stor25[None + 2].field_1032 <= 7
                        if stor25[None + 2].field_1032 == 4:
                            sub_70e25da8 = stor25[None + 2].field_1280
                        else:
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 5:
                                dailyLimit = stor25[None + 2].field_1280
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 6:
                                    stor3 = 0
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if stor25[None + 2].field_1032 == 2:
                                        if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                            if stor25[None + 2].field_1280 > 0:
                                                required = stor25[None + 2].field_1280
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if not stor25[None + 2].field_1032:
                                            if stor22[stor25[None + 2].field_1280] <= 0:
                                                idx = 0
                                                while idx < 16:
                                                    if stor6[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    require idx < 16
                                                    stor6[idx] = stor25[None + 2].field_1280
                                                    stor22[stor25[None + 2].field_1280] = idx + 1
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                        else:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 != 1:
                                                require stor25[None + 2].field_1032 <= 7
                                                if stor25[None + 2].field_1032 == 7:
                                                    call stor25[None + 2].field_1280 with:
                                                       value eth.balance(this.address) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        sub_b234a919Address = stor25[None + 2].field_1280
                                            else:
                                                if uint8(stor5.length) > 1:
                                                    if stor22[stor25[None + 2].field_1280] > 0:
                                                        uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                        if uint8(uint8(stor5.length) - 1) < required:
                                                            required = uint8(stor5.length)
                                                        require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                        address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                        stor22[stor25[None + 2].field_1280] = 0
        else:
            stor25.length++
            if not stor25.length <= stor25.length + 1:
                idx = 8 * stor25.length + 1
                while 8 * stor25.length > idx:
                    stor25[idx].field_0 = 0
                    stor25[idx].field_256 = 0
                    stor25[idx].field_512 = 0
                    stor25[idx].field_768 = 0
                    stor25[idx].field_1024 = 0
                    stor25[idx].field_1280 = 0
                    stor25[idx].field_1536 = 0
                    stor25[idx].field_1792 = 0
                    idx = idx + 8
                    continue 
            require stor25.length - 1 < stor25.length
            stor23++
            stor25[stor25.length - 1].field_0 = stor23 + 1
            stor25[stor25.length - 1].field_256 = msg.sender
            stor25[stor25.length - 1].field_512 = block.timestamp
            stor25[stor25.length - 1].field_768 = 0
            stor25[stor25.length - 1].field_1024 = 0
            stor25[stor25.length - 1].field_1024 = 0
            stor25[stor25.length - 1].field_1032 = 3
            stor25[stor25.length - 1].field_1280 = arg1
            stor25[stor25.length - 1].field_1440 = 0
            stor25[stor25.length - 1].field_1536 = arg2
            stor25[stor25.length - 1].field_1792 = arg3
            uint256(stor24)++
            idx = 192
            s = (8 * stor25.length - 1) + 5
            while 288 > idx + 32:
                mem[idx + 32] = stor25[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 3
            if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
                emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
                if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                    stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                    stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
                else:
                    emit 0xe78cc898: stor25[stor25.length - 1].field_0
                    require stor25[stor25.length - 1].field_1032 <= 7
                    idx = 896
                    s = (8 * stor25.length - 1) + 5
                    while 992 > idx + 32:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor25[stor25.length - 1].field_0 = 0
                    uint256(stor24)--
                    require stor25[stor25.length - 1].field_1032 <= 7
                    if stor25[stor25.length - 1].field_1032 == 3:
                        require mem[928] <= eth.balance(this.address)
                        if block.timestamp / 24 * 3600 <= stor4:
                            stor3 += mem[928]
                        else:
                            stor4 = block.timestamp / 24 * 3600
                            stor3 = mem[928]
                        call stor25[stor25.length - 1].field_1280 with:
                           value mem[928] wei
                             gas 100000 wei
                        emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                    else:
                        require stor25[stor25.length - 1].field_1032 <= 7
                        if stor25[stor25.length - 1].field_1032 == 4:
                            sub_70e25da8 = stor25[stor25.length - 1].field_1280
                        else:
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 5:
                                dailyLimit = stor25[stor25.length - 1].field_1280
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 6:
                                    stor3 = 0
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if stor25[stor25.length - 1].field_1032 == 2:
                                        if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                            if stor25[stor25.length - 1].field_1280 > 0:
                                                required = stor25[stor25.length - 1].field_1280
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if not stor25[stor25.length - 1].field_1032:
                                            if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                                idx = 0
                                                while idx < 16:
                                                    if stor6[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    require idx < 16
                                                    stor6[idx] = stor25[stor25.length - 1].field_1280
                                                    stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                    uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                        else:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 != 1:
                                                require stor25[stor25.length - 1].field_1032 <= 7
                                                if stor25[stor25.length - 1].field_1032 == 7:
                                                    call stor25[stor25.length - 1].field_1280 with:
                                                       value eth.balance(this.address) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                            else:
                                                if uint8(stor5.length) > 1:
                                                    if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                        uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                        if uint8(uint8(stor5.length) - 1) < required:
                                                            required = uint8(stor5.length)
                                                        require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                        address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                        stor22[stor25[stor25.length - 1].field_1280] = 0
    else:
        if block.timestamp / 24 * 3600 <= stor4:
            if stor3 + arg2 <= dailyLimit:
                if block.timestamp / 24 * 3600 <= stor4:
                    stor3 += arg2
                else:
                    stor4 = block.timestamp / 24 * 3600
                    stor3 = arg2
                call arg1 with:
                   value arg2 wei
                     gas 100000 wei
                emit 0xa522f866: address(arg1), arg2, not ext_call.success, 0, arg3
            else:
                idx = 0
                s = 0
                while idx < stor25.length:
                    mem[0] = 25
                    if stor25[idx].field_0 <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor25.length
                    mem[0] = 25
                    if stor25[idx].field_256 != msg.sender:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                require uint8(s) < 50
                if stor25.length != uint256(stor24):
                    require 0 < stor25.length
                    idx = 0
                    while stor25[idx].field_0:
                        require idx + 1 < stor25.length
                        mem[0] = 25
                        idx = idx + 1
                        continue 
                    require None + 2 < stor25.length
                    stor23++
                    stor25[None + 2].field_0 = stor23 + 1
                    stor25[None + 2].field_256 = msg.sender
                    stor25[None + 2].field_512 = block.timestamp
                    stor25[None + 2].field_768 = 0
                    stor25[None + 2].field_1024 = 0
                    stor25[None + 2].field_1024 = 0
                    stor25[None + 2].field_1032 = 3
                    stor25[None + 2].field_1280 = arg1
                    stor25[None + 2].field_1440 = 0
                    stor25[None + 2].field_1536 = arg2
                    stor25[None + 2].field_1792 = arg3
                    uint256(stor24)++
                    idx = 192
                    s = (8 * None + 2) + 5
                    while 288 > idx + 32:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 3
                    if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
                        emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
                        if stor25[None + 2].field_1024 < uint8(required - 1):
                            stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                            stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
                        else:
                            emit 0xe78cc898: stor25[None + 2].field_0
                            require stor25[None + 2].field_1032 <= 7
                            idx = 896
                            s = (8 * None + 2) + 5
                            while 992 > idx + 32:
                                mem[idx + 32] = stor25[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            stor25[None + 2].field_0 = 0
                            uint256(stor24)--
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 3:
                                require mem[928] <= eth.balance(this.address)
                                if block.timestamp / 24 * 3600 <= stor4:
                                    stor3 += mem[928]
                                else:
                                    stor4 = block.timestamp / 24 * 3600
                                    stor3 = mem[928]
                                call stor25[None + 2].field_1280 with:
                                   value mem[928] wei
                                     gas 100000 wei
                                emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 4:
                                    sub_70e25da8 = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if stor25[None + 2].field_1032 == 5:
                                        dailyLimit = stor25[None + 2].field_1280
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 == 6:
                                            stor3 = 0
                                        else:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 2:
                                                if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                                    if stor25[None + 2].field_1280 > 0:
                                                        required = stor25[None + 2].field_1280
                                            else:
                                                require stor25[None + 2].field_1032 <= 7
                                                if not stor25[None + 2].field_1032:
                                                    if stor22[stor25[None + 2].field_1280] <= 0:
                                                        idx = 0
                                                        while idx < 16:
                                                            if stor6[idx]:
                                                                idx = idx + 1
                                                                continue 
                                                            require idx < 16
                                                            stor6[idx] = stor25[None + 2].field_1280
                                                            stor22[stor25[None + 2].field_1280] = idx + 1
                                                            uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                                else:
                                                    require stor25[None + 2].field_1032 <= 7
                                                    if stor25[None + 2].field_1032 != 1:
                                                        require stor25[None + 2].field_1032 <= 7
                                                        if stor25[None + 2].field_1032 == 7:
                                                            call stor25[None + 2].field_1280 with:
                                                               value eth.balance(this.address) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                sub_b234a919Address = stor25[None + 2].field_1280
                                                    else:
                                                        if uint8(stor5.length) > 1:
                                                            if stor22[stor25[None + 2].field_1280] > 0:
                                                                uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                                if uint8(uint8(stor5.length) - 1) < required:
                                                                    required = uint8(stor5.length)
                                                                require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                                address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                                stor22[stor25[None + 2].field_1280] = 0
                else:
                    stor25.length++
                    if not stor25.length <= stor25.length + 1:
                        idx = 8 * stor25.length + 1
                        while 8 * stor25.length > idx:
                            stor25[idx].field_0 = 0
                            stor25[idx].field_256 = 0
                            stor25[idx].field_512 = 0
                            stor25[idx].field_768 = 0
                            stor25[idx].field_1024 = 0
                            stor25[idx].field_1280 = 0
                            stor25[idx].field_1536 = 0
                            stor25[idx].field_1792 = 0
                            idx = idx + 8
                            continue 
                    require stor25.length - 1 < stor25.length
                    stor23++
                    stor25[stor25.length - 1].field_0 = stor23 + 1
                    stor25[stor25.length - 1].field_256 = msg.sender
                    stor25[stor25.length - 1].field_512 = block.timestamp
                    stor25[stor25.length - 1].field_768 = 0
                    stor25[stor25.length - 1].field_1024 = 0
                    stor25[stor25.length - 1].field_1024 = 0
                    stor25[stor25.length - 1].field_1032 = 3
                    stor25[stor25.length - 1].field_1280 = arg1
                    stor25[stor25.length - 1].field_1440 = 0
                    stor25[stor25.length - 1].field_1536 = arg2
                    stor25[stor25.length - 1].field_1792 = arg3
                    uint256(stor24)++
                    idx = 192
                    s = (8 * stor25.length - 1) + 5
                    while 288 > idx + 32:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 3
                    if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
                        emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
                        if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                            stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                            stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
                        else:
                            emit 0xe78cc898: stor25[stor25.length - 1].field_0
                            require stor25[stor25.length - 1].field_1032 <= 7
                            idx = 896
                            s = (8 * stor25.length - 1) + 5
                            while 992 > idx + 32:
                                mem[idx + 32] = stor25[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            stor25[stor25.length - 1].field_0 = 0
                            uint256(stor24)--
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 3:
                                require mem[928] <= eth.balance(this.address)
                                if block.timestamp / 24 * 3600 <= stor4:
                                    stor3 += mem[928]
                                else:
                                    stor4 = block.timestamp / 24 * 3600
                                    stor3 = mem[928]
                                call stor25[stor25.length - 1].field_1280 with:
                                   value mem[928] wei
                                     gas 100000 wei
                                emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 4:
                                    sub_70e25da8 = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if stor25[stor25.length - 1].field_1032 == 5:
                                        dailyLimit = stor25[stor25.length - 1].field_1280
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 == 6:
                                            stor3 = 0
                                        else:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 2:
                                                if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                                    if stor25[stor25.length - 1].field_1280 > 0:
                                                        required = stor25[stor25.length - 1].field_1280
                                            else:
                                                require stor25[stor25.length - 1].field_1032 <= 7
                                                if not stor25[stor25.length - 1].field_1032:
                                                    if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                                        idx = 0
                                                        while idx < 16:
                                                            if stor6[idx]:
                                                                idx = idx + 1
                                                                continue 
                                                            require idx < 16
                                                            stor6[idx] = stor25[stor25.length - 1].field_1280
                                                            stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                            uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                                else:
                                                    require stor25[stor25.length - 1].field_1032 <= 7
                                                    if stor25[stor25.length - 1].field_1032 != 1:
                                                        require stor25[stor25.length - 1].field_1032 <= 7
                                                        if stor25[stor25.length - 1].field_1032 == 7:
                                                            call stor25[stor25.length - 1].field_1280 with:
                                                               value eth.balance(this.address) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                                    else:
                                                        if uint8(stor5.length) > 1:
                                                            if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                                uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                                if uint8(uint8(stor5.length) - 1) < required:
                                                                    required = uint8(stor5.length)
                                                                require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                                address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                                stor22[stor25[stor25.length - 1].field_1280] = 0
        else:
            if arg2 <= dailyLimit:
                if block.timestamp / 24 * 3600 <= stor4:
                    stor3 += arg2
                else:
                    stor4 = block.timestamp / 24 * 3600
                    stor3 = arg2
                call arg1 with:
                   value arg2 wei
                     gas 100000 wei
                emit 0xa522f866: address(arg1), arg2, not ext_call.success, 0, arg3
            else:
                idx = 0
                s = 0
                while idx < stor25.length:
                    mem[0] = 25
                    if stor25[idx].field_0 <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor25.length
                    mem[0] = 25
                    if stor25[idx].field_256 != msg.sender:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                require uint8(s) < 50
                if stor25.length != uint256(stor24):
                    require 0 < stor25.length
                    idx = 0
                    while stor25[idx].field_0:
                        require idx + 1 < stor25.length
                        mem[0] = 25
                        idx = idx + 1
                        continue 
                    require None + 2 < stor25.length
                    stor23++
                    stor25[None + 2].field_0 = stor23 + 1
                    stor25[None + 2].field_256 = msg.sender
                    stor25[None + 2].field_512 = block.timestamp
                    stor25[None + 2].field_768 = 0
                    stor25[None + 2].field_1024 = 0
                    stor25[None + 2].field_1024 = 0
                    stor25[None + 2].field_1032 = 3
                    stor25[None + 2].field_1280 = arg1
                    stor25[None + 2].field_1440 = 0
                    stor25[None + 2].field_1536 = arg2
                    stor25[None + 2].field_1792 = arg3
                    uint256(stor24)++
                    idx = 192
                    s = (8 * None + 2) + 5
                    while 288 > idx + 32:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf5dcf667: stor25[None + 2].field_1280, mem[224 len 64], msg.sender, stor25[None + 2].field_0, 3
                    if not 2^stor22[address(msg.sender)] or not stor25[None + 2].field_768:
                        emit 0xf3dc9046: msg.sender, stor25[None + 2].field_0
                        if stor25[None + 2].field_1024 < uint8(required - 1):
                            stor25[None + 2].field_1024 = uint8(stor25[None + 2].field_1024 + 1)
                            stor25[None + 2].field_768 = 2^stor22[address(msg.sender)] or stor25[None + 2].field_768
                        else:
                            emit 0xe78cc898: stor25[None + 2].field_0
                            require stor25[None + 2].field_1032 <= 7
                            idx = 896
                            s = (8 * None + 2) + 5
                            while 992 > idx + 32:
                                mem[idx + 32] = stor25[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            stor25[None + 2].field_0 = 0
                            uint256(stor24)--
                            require stor25[None + 2].field_1032 <= 7
                            if stor25[None + 2].field_1032 == 3:
                                require mem[928] <= eth.balance(this.address)
                                if block.timestamp / 24 * 3600 <= stor4:
                                    stor3 += mem[928]
                                else:
                                    stor4 = block.timestamp / 24 * 3600
                                    stor3 = mem[928]
                                call stor25[None + 2].field_1280 with:
                                   value mem[928] wei
                                     gas 100000 wei
                                emit 0xa522f866: stor25[None + 2].field_1280, mem[928], not ext_call.success, stor25[None + 2].field_0, mem[960]
                            else:
                                require stor25[None + 2].field_1032 <= 7
                                if stor25[None + 2].field_1032 == 4:
                                    sub_70e25da8 = stor25[None + 2].field_1280
                                else:
                                    require stor25[None + 2].field_1032 <= 7
                                    if stor25[None + 2].field_1032 == 5:
                                        dailyLimit = stor25[None + 2].field_1280
                                    else:
                                        require stor25[None + 2].field_1032 <= 7
                                        if stor25[None + 2].field_1032 == 6:
                                            stor3 = 0
                                        else:
                                            require stor25[None + 2].field_1032 <= 7
                                            if stor25[None + 2].field_1032 == 2:
                                                if stor25[None + 2].field_1280 <= uint8(stor5.length):
                                                    if stor25[None + 2].field_1280 > 0:
                                                        required = stor25[None + 2].field_1280
                                            else:
                                                require stor25[None + 2].field_1032 <= 7
                                                if not stor25[None + 2].field_1032:
                                                    if stor22[stor25[None + 2].field_1280] <= 0:
                                                        idx = 0
                                                        while idx < 16:
                                                            if stor6[idx]:
                                                                idx = idx + 1
                                                                continue 
                                                            require idx < 16
                                                            stor6[idx] = stor25[None + 2].field_1280
                                                            stor22[stor25[None + 2].field_1280] = idx + 1
                                                            uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                                else:
                                                    require stor25[None + 2].field_1032 <= 7
                                                    if stor25[None + 2].field_1032 != 1:
                                                        require stor25[None + 2].field_1032 <= 7
                                                        if stor25[None + 2].field_1032 == 7:
                                                            call stor25[None + 2].field_1280 with:
                                                               value eth.balance(this.address) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                sub_b234a919Address = stor25[None + 2].field_1280
                                                    else:
                                                        if uint8(stor5.length) > 1:
                                                            if stor22[stor25[None + 2].field_1280] > 0:
                                                                uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                                if uint8(uint8(stor5.length) - 1) < required:
                                                                    required = uint8(stor5.length)
                                                                require stor22[stor25[None + 2].field_1280] - 1 < 16
                                                                address(stor5[stor22[stor25[None + 2].field_1280]]) = 0
                                                                stor22[stor25[None + 2].field_1280] = 0
                else:
                    stor25.length++
                    if not stor25.length <= stor25.length + 1:
                        idx = 8 * stor25.length + 1
                        while 8 * stor25.length > idx:
                            stor25[idx].field_0 = 0
                            stor25[idx].field_256 = 0
                            stor25[idx].field_512 = 0
                            stor25[idx].field_768 = 0
                            stor25[idx].field_1024 = 0
                            stor25[idx].field_1280 = 0
                            stor25[idx].field_1536 = 0
                            stor25[idx].field_1792 = 0
                            idx = idx + 8
                            continue 
                    require stor25.length - 1 < stor25.length
                    stor23++
                    stor25[stor25.length - 1].field_0 = stor23 + 1
                    stor25[stor25.length - 1].field_256 = msg.sender
                    stor25[stor25.length - 1].field_512 = block.timestamp
                    stor25[stor25.length - 1].field_768 = 0
                    stor25[stor25.length - 1].field_1024 = 0
                    stor25[stor25.length - 1].field_1024 = 0
                    stor25[stor25.length - 1].field_1032 = 3
                    stor25[stor25.length - 1].field_1280 = arg1
                    stor25[stor25.length - 1].field_1440 = 0
                    stor25[stor25.length - 1].field_1536 = arg2
                    stor25[stor25.length - 1].field_1792 = arg3
                    uint256(stor24)++
                    idx = 192
                    s = (8 * stor25.length - 1) + 5
                    while 288 > idx + 32:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf5dcf667: stor25[stor25.length - 1].field_1280, mem[224 len 64], msg.sender, stor25[stor25.length - 1].field_0, 3
                    if not 2^stor22[address(msg.sender)] or not stor25[stor25.length - 1].field_768:
                        emit 0xf3dc9046: msg.sender, stor25[stor25.length - 1].field_0
                        if stor25[stor25.length - 1].field_1024 < uint8(required - 1):
                            stor25[stor25.length - 1].field_1024 = uint8(stor25[stor25.length - 1].field_1024 + 1)
                            stor25[stor25.length - 1].field_768 = 2^stor22[address(msg.sender)] or stor25[stor25.length - 1].field_768
                        else:
                            emit 0xe78cc898: stor25[stor25.length - 1].field_0
                            require stor25[stor25.length - 1].field_1032 <= 7
                            idx = 896
                            s = (8 * stor25.length - 1) + 5
                            while 992 > idx + 32:
                                mem[idx + 32] = stor25[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            stor25[stor25.length - 1].field_0 = 0
                            uint256(stor24)--
                            require stor25[stor25.length - 1].field_1032 <= 7
                            if stor25[stor25.length - 1].field_1032 == 3:
                                require mem[928] <= eth.balance(this.address)
                                if block.timestamp / 24 * 3600 <= stor4:
                                    stor3 += mem[928]
                                else:
                                    stor4 = block.timestamp / 24 * 3600
                                    stor3 = mem[928]
                                call stor25[stor25.length - 1].field_1280 with:
                                   value mem[928] wei
                                     gas 100000 wei
                                emit 0xa522f866: stor25[stor25.length - 1].field_1280, mem[928], not ext_call.success, stor25[stor25.length - 1].field_0, mem[960]
                            else:
                                require stor25[stor25.length - 1].field_1032 <= 7
                                if stor25[stor25.length - 1].field_1032 == 4:
                                    sub_70e25da8 = stor25[stor25.length - 1].field_1280
                                else:
                                    require stor25[stor25.length - 1].field_1032 <= 7
                                    if stor25[stor25.length - 1].field_1032 == 5:
                                        dailyLimit = stor25[stor25.length - 1].field_1280
                                    else:
                                        require stor25[stor25.length - 1].field_1032 <= 7
                                        if stor25[stor25.length - 1].field_1032 == 6:
                                            stor3 = 0
                                        else:
                                            require stor25[stor25.length - 1].field_1032 <= 7
                                            if stor25[stor25.length - 1].field_1032 == 2:
                                                if stor25[stor25.length - 1].field_1280 <= uint8(stor5.length):
                                                    if stor25[stor25.length - 1].field_1280 > 0:
                                                        required = stor25[stor25.length - 1].field_1280
                                            else:
                                                require stor25[stor25.length - 1].field_1032 <= 7
                                                if not stor25[stor25.length - 1].field_1032:
                                                    if stor22[stor25[stor25.length - 1].field_1280] <= 0:
                                                        idx = 0
                                                        while idx < 16:
                                                            if stor6[idx]:
                                                                idx = idx + 1
                                                                continue 
                                                            require idx < 16
                                                            stor6[idx] = stor25[stor25.length - 1].field_1280
                                                            stor22[stor25[stor25.length - 1].field_1280] = idx + 1
                                                            uint8(stor5.length) = uint8(uint8(stor5.length) + 1)
                                                else:
                                                    require stor25[stor25.length - 1].field_1032 <= 7
                                                    if stor25[stor25.length - 1].field_1032 != 1:
                                                        require stor25[stor25.length - 1].field_1032 <= 7
                                                        if stor25[stor25.length - 1].field_1032 == 7:
                                                            call stor25[stor25.length - 1].field_1280 with:
                                                               value eth.balance(this.address) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                sub_b234a919Address = stor25[stor25.length - 1].field_1280
                                                    else:
                                                        if uint8(stor5.length) > 1:
                                                            if stor22[stor25[stor25.length - 1].field_1280] > 0:
                                                                uint8(stor5.length) = uint8(uint8(stor5.length) - 1)
                                                                if uint8(uint8(stor5.length) - 1) < required:
                                                                    required = uint8(stor5.length)
                                                                require stor22[stor25[stor25.length - 1].field_1280] - 1 < 16
                                                                address(stor5[stor22[stor25[stor25.length - 1].field_1280]]) = 0
                                                                stor22[stor25[stor25.length - 1].field_1280] = 0
}



}
