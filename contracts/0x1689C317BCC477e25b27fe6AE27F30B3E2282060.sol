contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint8 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor13;
uint256 stor14;
uint256 stor16;
uint8 stor18;

function _fallback() {
    stor0 = code.data[11265 len 20]
    stor1 = code.data[11297 len 20]
    stor2 = code.data[11329 len 20]
    address(stor3.field_0) = code.data[11329 len 20]
    uint8(stor3.field_160) = 0
    stor4 = block.timestamp
    stor5 = 10^17
    stor6 = 10^16
    stor7 = 10^16
    stor8 = 5 * 10^15
    stor9 = 10^9
    stor10 = 50
    stor13 = 0
    stor14 = 0
    stor16 = 0
    stor18 = 3
    return code.data[239 len 11014]
}



// =====================  Runtime code  =====================


address tokenAAddress;
address tokenBAddress;
address owner;
uint8 stor3; offset 160
address priceFeedAddress;
uint256 haltTime;
uint256 sub_94e56cd3;
uint256 sub_00f96233;
uint256 sub_c0853e6d;
uint256 sub_736254e8;
uint256 divisor;
uint256 blockWait;
mapping of struct sub_2b7a9e8a;
mapping of struct sub_b0fa2c22;
uint256 sub_29343f90;
uint256 sub_24a17e66;
mapping of struct auctions;
uint256 sub_d4166763;
uint256 endSession;
uint8 stage;

function sub_00f96233(?) {
    return sub_00f96233
}

function tokenA() {
    return tokenAAddress
}

function divisor() {
    return divisor
}

function sub_24a17e66(?) {
    return sub_24a17e66
}

function sub_29343f90(?) {
    return sub_29343f90
}

function sub_2b7a9e8a(?) {
    return sub_2b7a9e8a[arg1].field_0, 
           sub_2b7a9e8a[arg1].field_256,
           sub_2b7a9e8a[arg1].field_512,
           sub_2b7a9e8a[arg1].field_768,
           sub_2b7a9e8a[arg1].field_1024,
           sub_2b7a9e8a[arg1].field_1280,
           sub_2b7a9e8a[arg1].field_1536,
           sub_2b7a9e8a[arg1].field_1792,
           sub_2b7a9e8a[arg1].field_2048
}

function auctions(uint256 arg1) {
    return auctions[arg1].field_0, 
           auctions[arg1].field_256,
           auctions[arg1].field_512,
           auctions[arg1].field_768,
           auctions[arg1].field_1024,
           auctions[arg1].field_1280,
           auctions[arg1].field_1536,
           auctions[arg1].field_1792,
           bool(auctions[arg1].field_2048)
}

function tokenB() {
    return tokenBAddress
}

function sub_736254e8(?) {
    return sub_736254e8
}

function priceFeed() {
    return priceFeedAddress
}

function owner() {
    return owner
}

function sub_94e56cd3(?) {
    return sub_94e56cd3
}

function sub_b0fa2c22(?) {
    return sub_b0fa2c22[arg1].field_0, 
           sub_b0fa2c22[arg1].field_256,
           sub_b0fa2c22[arg1].field_512,
           sub_b0fa2c22[arg1].field_768,
           sub_b0fa2c22[arg1].field_1024,
           sub_b0fa2c22[arg1].field_1280,
           sub_b0fa2c22[arg1].field_1536,
           sub_b0fa2c22[arg1].field_1792,
           sub_b0fa2c22[arg1].field_2048
}

function halted() {
    return bool(stor3)
}

function stage() {
    return stage
}

function sub_c0853e6d(?) {
    return sub_c0853e6d
}

function blockWait() {
    return blockWait
}

function sub_d4166763(?) {
    return sub_d4166763
}

function endSession() {
    return endSession
}

function haltTime() {
    return haltTime
}

function _fallback() {
    revert 
}

function changePriceFeed(address arg1) {
    require owner == msg.sender
    priceFeedAddress = arg1
    return 1
}

function sub_a0c0a981(?) {
    require owner == msg.sender
    require block.timestamp >= haltTime
    stor3 = 0
    return 1
}

function sub_6041bbe1(?) {
    require owner == msg.sender
    haltTime = block.timestamp + (24 * 3600)
    stor3 = 1
    return 1
}

function startTrading(uint256 arg1) {
    require priceFeedAddress == msg.sender
    require bool(stor3) != 1
    require 1 == stage
    endSession += arg1
    sub_d4166763++
    stage = 2
    return 1
}

function withdrawToken(address arg1) {
    require owner == msg.sender
    require tokenAAddress != arg1
    require tokenBAddress != arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args priceFeedAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function finalizeAuction() {
    require priceFeedAddress == msg.sender
    require bool(stor3) != 1
    require 3 == stage
    require block.number > auctions[stor16].field_1792 + blockWait
    require auctions[stor16].field_0 > 0
    auctions[stor16].field_2048 = 1
    stage = 1
    emit 0x11b2e836: auctions[stor16].field_0, auctions[stor16].field_256, auctions[stor16].field_512, auctions[stor16].field_768, auctions[stor16].field_1024, auctions[stor16].field_1280, auctions[stor16].field_1536, auctions[stor16].field_1792, bool(auctions[stor16].field_2048)
    return 1
}

function sub_46a874d3(?) {
    require bool(stor3) != 1
    require 2 == stage
    if block.timestamp > endSession:
        stage = 3
        return 0
    require arg1 <= sub_29343f90
    require sub_2b7a9e8a[arg1].field_0 == msg.sender
    require 1 == sub_2b7a9e8a[arg1].field_2048
    require sub_2b7a9e8a[arg1].field_1792 == sub_d4166763
    sub_2b7a9e8a[arg1].field_2048 = 6
    sub_2b7a9e8a[arg1].field_1280 = sub_2b7a9e8a[arg1].field_768
    require ext_code.size(tokenBAddress)
    call tokenBAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args sub_2b7a9e8a[arg1].field_1536, sub_2b7a9e8a[arg1].field_768
    require ext_call.success
    require ext_call.return_data[0]
    sub_2b7a9e8a[arg1].field_2048 = 2
    emit 0x6050d4be: arg1
    return 1
}

function sub_bd7c2917(?) {
    require bool(stor3) != 1
    require 2 == stage
    if block.timestamp > endSession:
        stage = 3
        return 0
    require arg1 <= sub_24a17e66
    require sub_b0fa2c22[arg1].field_0 == msg.sender
    require 1 == sub_b0fa2c22[arg1].field_2048
    require sub_b0fa2c22[arg1].field_1792 == sub_d4166763
    sub_b0fa2c22[arg1].field_2048 = 6
    sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512
    require ext_code.size(tokenAAddress)
    call tokenAAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args sub_b0fa2c22[arg1].field_1536, sub_b0fa2c22[arg1].field_512
    require ext_call.success
    require ext_call.return_data[0]
    sub_b0fa2c22[arg1].field_2048 = 2
    emit 0xc4c7c4c5: arg1
    return 1
}

function sub_1b6c1c2f(?) {
    require priceFeedAddress == msg.sender
    require bool(stor3) != 1
    require 3 == stage
    auctions[stor16].field_0 = call.data[4]
    auctions[stor16].field_256 = call.data[36]
    auctions[stor16].field_512 = call.data[68]
    auctions[stor16].field_768 = call.data[100]
    auctions[stor16].field_1024 = call.data[132]
    auctions[stor16].field_1280 = call.data[164]
    auctions[stor16].field_1536 = call.data[196]
    auctions[stor16].field_1792 = block.number
    emit 0x11b2e836: auctions[stor16].field_0, auctions[stor16].field_256, auctions[stor16].field_512, auctions[stor16].field_768, auctions[stor16].field_1024, auctions[stor16].field_1280, auctions[stor16].field_1536, auctions[stor16].field_1792, bool(auctions[stor16].field_2048)
    return 1
}

function sub_c6af6adf(?) {
    require bool(stor3) != 1
    require 2 == stage
    if block.timestamp > endSession:
        stage = 3
        return 0
    require arg1
    require arg2 >= sub_00f96233
    sub_29343f90++
    require ext_code.size(tokenBAddress)
    call tokenBAddress.0x23b872dd with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    sub_2b7a9e8a[stor13].field_0 = msg.sender
    sub_2b7a9e8a[stor13].field_256 = arg1
    sub_2b7a9e8a[stor13].field_512 = 0
    sub_2b7a9e8a[stor13].field_768 = arg2
    sub_2b7a9e8a[stor13].field_1536 = arg3
    sub_2b7a9e8a[stor13].field_1792 = sub_d4166763
    sub_2b7a9e8a[stor13].field_2048 = 1
    emit 0x1ca78ef7: sub_29343f90, sub_2b7a9e8a[stor13].field_256, sub_2b7a9e8a[stor13].field_768, sub_2b7a9e8a[stor13].field_0
    return 1
}

function sub_f4e2ebfc(?) {
    require bool(stor3) != 1
    require 2 == stage
    if block.timestamp > endSession:
        stage = 3
        return 0
    require arg1
    require arg2 >= sub_94e56cd3
    sub_24a17e66++
    require ext_code.size(tokenAAddress)
    call tokenAAddress.0x23b872dd with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    sub_b0fa2c22[stor14].field_0 = msg.sender
    sub_b0fa2c22[stor14].field_256 = arg1
    sub_b0fa2c22[stor14].field_512 = arg2
    sub_b0fa2c22[stor14].field_768 = 0
    sub_b0fa2c22[stor14].field_1536 = arg3
    sub_b0fa2c22[stor14].field_1792 = sub_d4166763
    sub_b0fa2c22[stor14].field_2048 = 1
    emit 0x1080b70f: sub_24a17e66, sub_b0fa2c22[stor14].field_256, sub_b0fa2c22[stor14].field_512, sub_b0fa2c22[stor14].field_0
    return 1
}

function sub_9e6e24bb(?) {
    require bool(stor3) != 1
    require arg1 <= sub_29343f90
    require 1 == sub_2b7a9e8a[arg1].field_2048
    require 1 == bool(auctions[stor11[arg1].field_1792].field_2048)
    sub_2b7a9e8a[arg1].field_2048 = 7
    if auctions[stor11[arg1].field_1792].field_768 <= 0:
        sub_2b7a9e8a[arg1].field_1280 = sub_2b7a9e8a[arg1].field_768
        sub_2b7a9e8a[arg1].field_2048 = 5
    else:
        if arg1 == auctions[stor11[arg1].field_1792].field_256:
            require divisor
            sub_2b7a9e8a[arg1].field_1024 = auctions[stor11[arg1].field_1792].field_512 * auctions[stor11[arg1].field_1792].field_0 / divisor
            sub_2b7a9e8a[arg1].field_1280 = sub_2b7a9e8a[arg1].field_768 - auctions[stor11[arg1].field_1792].field_512
            sub_2b7a9e8a[arg1].field_2048 = 4
        else:
            if sub_2b7a9e8a[arg1].field_256 < auctions[stor11[arg1].field_1792].field_768:
                require divisor
                sub_2b7a9e8a[arg1].field_1024 = sub_2b7a9e8a[arg1].field_768 * auctions[stor11[arg1].field_1792].field_0 / divisor
                sub_2b7a9e8a[arg1].field_2048 = 3
            else:
                if sub_2b7a9e8a[arg1].field_256 != auctions[stor11[arg1].field_1792].field_768:
                    if sub_2b7a9e8a[arg1].field_256 != auctions[stor11[arg1].field_1792].field_768:
                        sub_2b7a9e8a[arg1].field_1280 = sub_2b7a9e8a[arg1].field_768
                        sub_2b7a9e8a[arg1].field_2048 = 5
                    else:
                        if auctions[stor11[arg1].field_1792].field_512:
                            sub_2b7a9e8a[arg1].field_1280 = sub_2b7a9e8a[arg1].field_768
                            sub_2b7a9e8a[arg1].field_2048 = 5
                        else:
                            require divisor
                            sub_2b7a9e8a[arg1].field_1024 = sub_2b7a9e8a[arg1].field_768 * auctions[stor11[arg1].field_1792].field_0 / divisor
                            sub_2b7a9e8a[arg1].field_2048 = 3
                else:
                    if arg1 < auctions[stor11[arg1].field_1792].field_256:
                        require divisor
                        sub_2b7a9e8a[arg1].field_1024 = sub_2b7a9e8a[arg1].field_768 * auctions[stor11[arg1].field_1792].field_0 / divisor
                        sub_2b7a9e8a[arg1].field_2048 = 3
                    else:
                        if sub_2b7a9e8a[arg1].field_256 != auctions[stor11[arg1].field_1792].field_768:
                            sub_2b7a9e8a[arg1].field_1280 = sub_2b7a9e8a[arg1].field_768
                            sub_2b7a9e8a[arg1].field_2048 = 5
                        else:
                            if auctions[stor11[arg1].field_1792].field_512:
                                sub_2b7a9e8a[arg1].field_1280 = sub_2b7a9e8a[arg1].field_768
                                sub_2b7a9e8a[arg1].field_2048 = 5
                            else:
                                require divisor
                                sub_2b7a9e8a[arg1].field_1024 = sub_2b7a9e8a[arg1].field_768 * auctions[stor11[arg1].field_1792].field_0 / divisor
                                sub_2b7a9e8a[arg1].field_2048 = 3
    if sub_2b7a9e8a[arg1].field_1024 > 0:
        require ext_code.size(tokenAAddress)
        if priceFeedAddress != msg.sender:
            call tokenAAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args sub_2b7a9e8a[arg1].field_1536, sub_2b7a9e8a[arg1].field_1024
        else:
            if sub_2b7a9e8a[arg1].field_1024 <= sub_c0853e6d:
                call tokenAAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args sub_2b7a9e8a[arg1].field_1536, sub_2b7a9e8a[arg1].field_1024
            else:
                call tokenAAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args priceFeedAddress, sub_c0853e6d
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenAAddress)
                call tokenAAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args sub_2b7a9e8a[arg1].field_1536, sub_2b7a9e8a[arg1].field_1024 - sub_c0853e6d
        require ext_call.success
        require ext_call.return_data[0]
    if sub_2b7a9e8a[arg1].field_1280 > 0:
        require ext_code.size(tokenBAddress)
        if priceFeedAddress != msg.sender:
            call tokenBAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args sub_2b7a9e8a[arg1].field_1536, sub_2b7a9e8a[arg1].field_1280
        else:
            if sub_2b7a9e8a[arg1].field_1280 <= sub_736254e8:
                call tokenBAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args sub_2b7a9e8a[arg1].field_1536, sub_2b7a9e8a[arg1].field_1280
            else:
                call tokenBAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args priceFeedAddress, sub_736254e8
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenBAddress)
                call tokenBAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args sub_2b7a9e8a[arg1].field_1536, sub_2b7a9e8a[arg1].field_1280 - sub_736254e8
        require ext_call.success
        require ext_call.return_data[0]
    emit 0xfa552559: arg1, sub_2b7a9e8a[arg1].field_1024, sub_2b7a9e8a[arg1].field_1280, sub_2b7a9e8a[arg1].field_2048, sub_2b7a9e8a[arg1].field_1536
    return 1
}

function sub_c1ca218e(?) {
    idx = arg1
    s = 0
    t = 0
    u = 0
    while idx <= sub_29343f90:
        mem[0] = idx
        mem[32] = 11
        if sub_2b7a9e8a[idx].field_2048 != 1:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        mem[0] = idx
        mem[32] = 11
        if sub_2b7a9e8a[idx].field_1792 != sub_d4166763:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if auctions[stor16].field_768 <= 0:
            mem[0] = idx
            mem[32] = 11
            idx = idx + 1
            s = sub_2b7a9e8a[idx].field_768 + s
            t = t
            u = u + sub_2b7a9e8a[idx].field_768
            continue 
        if idx == auctions[stor16].field_256:
            require divisor
            mem[0] = idx
            mem[32] = 11
            idx = idx + 1
            s = s + sub_2b7a9e8a[idx].field_768 - auctions[stor16].field_512
            t = t + (auctions[stor16].field_512 * auctions[stor16].field_0 / divisor)
            u = u + sub_2b7a9e8a[idx].field_768
            continue 
        if sub_2b7a9e8a[idx].field_256 >= auctions[stor16].field_768:
            if sub_2b7a9e8a[idx].field_256 != auctions[stor16].field_768:
                if sub_2b7a9e8a[idx].field_256 != auctions[stor16].field_768:
                    mem[0] = idx
                    mem[32] = 11
                    idx = idx + 1
                    s = sub_2b7a9e8a[idx].field_768 + s
                    t = t
                    u = u + sub_2b7a9e8a[idx].field_768
                    continue 
                if auctions[stor16].field_512:
                    mem[0] = idx
                    mem[32] = 11
                    idx = idx + 1
                    s = sub_2b7a9e8a[idx].field_768 + s
                    t = t
                    u = u + sub_2b7a9e8a[idx].field_768
                    continue 
            else:
                if idx >= auctions[stor16].field_256:
                    if sub_2b7a9e8a[idx].field_256 != auctions[stor16].field_768:
                        mem[0] = idx
                        mem[32] = 11
                        idx = idx + 1
                        s = sub_2b7a9e8a[idx].field_768 + s
                        t = t
                        u = u + sub_2b7a9e8a[idx].field_768
                        continue 
                    if auctions[stor16].field_512:
                        mem[0] = idx
                        mem[32] = 11
                        idx = idx + 1
                        s = sub_2b7a9e8a[idx].field_768 + s
                        t = t
                        u = u + sub_2b7a9e8a[idx].field_768
                        continue 
        mem[0] = idx
        mem[32] = 11
        require divisor
        idx = idx + 1
        s = s
        t = t + (sub_2b7a9e8a[idx].field_768 * auctions[stor16].field_0 / divisor)
        u = u + sub_2b7a9e8a[idx].field_768
        continue 
    idx = arg2
    v = s
    w = t
    x = 0
    while idx <= sub_24a17e66:
        mem[0] = idx
        mem[32] = 12
        if sub_b0fa2c22[idx].field_2048 != 1:
            idx = idx + 1
            v = v
            w = w
            x = x
            continue 
        mem[0] = idx
        mem[32] = 12
        if sub_b0fa2c22[idx].field_1792 != sub_d4166763:
            idx = idx + 1
            v = v
            w = w
            x = x
            continue 
        if auctions[stor16].field_1536 <= 0:
            mem[0] = idx
            mem[32] = 12
            idx = idx + 1
            v = v
            w = sub_b0fa2c22[idx].field_512 + w
            x = x + sub_b0fa2c22[idx].field_512
            continue 
        if idx == auctions[stor16].field_1024:
            require divisor
            mem[0] = sub_d4166763
            mem[32] = 15
            idx = idx + 1
            v = v + auctions[stor16].field_1280
            w = w + sub_b0fa2c22[idx].field_512 - (auctions[stor16].field_1280 * auctions[stor16].field_0 / divisor)
            x = x + sub_b0fa2c22[idx].field_512
            continue 
        if sub_b0fa2c22[idx].field_256 <= auctions[stor16].field_1536:
            if sub_b0fa2c22[idx].field_256 != auctions[stor16].field_1536:
                if sub_b0fa2c22[idx].field_256 != auctions[stor16].field_1536:
                    mem[0] = idx
                    mem[32] = 12
                    idx = idx + 1
                    v = v
                    w = sub_b0fa2c22[idx].field_512 + w
                    x = x + sub_b0fa2c22[idx].field_512
                    continue 
                if auctions[stor16].field_1280:
                    mem[0] = idx
                    mem[32] = 12
                    idx = idx + 1
                    v = v
                    w = sub_b0fa2c22[idx].field_512 + w
                    x = x + sub_b0fa2c22[idx].field_512
                    continue 
            else:
                if idx >= auctions[stor16].field_1024:
                    if sub_b0fa2c22[idx].field_256 != auctions[stor16].field_1536:
                        mem[0] = idx
                        mem[32] = 12
                        idx = idx + 1
                        v = v
                        w = sub_b0fa2c22[idx].field_512 + w
                        x = x + sub_b0fa2c22[idx].field_512
                        continue 
                    if auctions[stor16].field_1280:
                        mem[0] = idx
                        mem[32] = 12
                        idx = idx + 1
                        v = v
                        w = sub_b0fa2c22[idx].field_512 + w
                        x = x + sub_b0fa2c22[idx].field_512
                        continue 
        require sub_b0fa2c22[idx].field_256
        require sub_b0fa2c22[idx].field_256
        require divisor
        mem[0] = idx
        mem[32] = 12
        if sub_b0fa2c22[idx].field_512 - (divisor * sub_b0fa2c22[idx].field_512 / sub_b0fa2c22[idx].field_256 * auctions[stor16].field_0 / divisor) + w < 1:
            idx = idx + 1
            v = (divisor * sub_b0fa2c22[idx].field_512 / sub_b0fa2c22[idx].field_256) + v
            w = sub_b0fa2c22[idx].field_512 - (divisor * sub_b0fa2c22[idx].field_512 / sub_b0fa2c22[idx].field_256 * auctions[stor16].field_0 / divisor) + w
            x = x + sub_b0fa2c22[idx].field_512
            continue 
        idx = idx + 1
        v = (divisor * sub_b0fa2c22[idx].field_512 / sub_b0fa2c22[idx].field_256) + v
        w = sub_b0fa2c22[idx].field_512 + -(divisor * sub_b0fa2c22[idx].field_512 / sub_b0fa2c22[idx].field_256 * auctions[stor16].field_0 / divisor) + w - 1
        x = x + sub_b0fa2c22[idx].field_512
        continue 
    return x, w, x - w, u, v, u - v
}

function sub_953e0568(?) {
    require bool(stor3) != 1
    require arg1 <= sub_24a17e66
    require 1 == sub_b0fa2c22[arg1].field_2048
    require 1 == bool(auctions[stor12[arg1].field_1792].field_2048)
    sub_b0fa2c22[arg1].field_2048 = 7
    if auctions[stor12[arg1].field_1792].field_1536 <= 0:
        sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512
        sub_b0fa2c22[arg1].field_2048 = 5
    else:
        if arg1 == auctions[stor12[arg1].field_1792].field_1024:
            require divisor
            sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512 - (auctions[stor12[arg1].field_1792].field_1280 * auctions[stor12[arg1].field_1792].field_0 / divisor)
            sub_b0fa2c22[arg1].field_1280 = auctions[stor12[arg1].field_1792].field_1280
            sub_b0fa2c22[arg1].field_2048 = 4
        else:
            if sub_b0fa2c22[arg1].field_256 > auctions[stor12[arg1].field_1792].field_1536:
                require sub_b0fa2c22[arg1].field_256
                sub_b0fa2c22[arg1].field_1280 = divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256
                require sub_b0fa2c22[arg1].field_256
                require divisor
                sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512 - (divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256 * auctions[stor12[arg1].field_1792].field_0 / divisor)
                if sub_b0fa2c22[arg1].field_512 - (divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256 * auctions[stor12[arg1].field_1792].field_0 / divisor) >= 1:
                    sub_b0fa2c22[arg1].field_1024--
                sub_b0fa2c22[arg1].field_2048 = 3
            else:
                if sub_b0fa2c22[arg1].field_256 != auctions[stor12[arg1].field_1792].field_1536:
                    if sub_b0fa2c22[arg1].field_256 != auctions[stor12[arg1].field_1792].field_1536:
                        sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512
                        sub_b0fa2c22[arg1].field_2048 = 5
                    else:
                        if auctions[stor12[arg1].field_1792].field_1280:
                            sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512
                            sub_b0fa2c22[arg1].field_2048 = 5
                        else:
                            require sub_b0fa2c22[arg1].field_256
                            sub_b0fa2c22[arg1].field_1280 = divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256
                            require sub_b0fa2c22[arg1].field_256
                            require divisor
                            sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512 - (divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256 * auctions[stor12[arg1].field_1792].field_0 / divisor)
                            if sub_b0fa2c22[arg1].field_512 - (divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256 * auctions[stor12[arg1].field_1792].field_0 / divisor) >= 1:
                                sub_b0fa2c22[arg1].field_1024--
                            sub_b0fa2c22[arg1].field_2048 = 3
                else:
                    if arg1 < auctions[stor12[arg1].field_1792].field_1024:
                        require sub_b0fa2c22[arg1].field_256
                        sub_b0fa2c22[arg1].field_1280 = divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256
                        require sub_b0fa2c22[arg1].field_256
                        require divisor
                        sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512 - (divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256 * auctions[stor12[arg1].field_1792].field_0 / divisor)
                        if sub_b0fa2c22[arg1].field_512 - (divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256 * auctions[stor12[arg1].field_1792].field_0 / divisor) >= 1:
                            sub_b0fa2c22[arg1].field_1024--
                        sub_b0fa2c22[arg1].field_2048 = 3
                    else:
                        if sub_b0fa2c22[arg1].field_256 != auctions[stor12[arg1].field_1792].field_1536:
                            sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512
                            sub_b0fa2c22[arg1].field_2048 = 5
                        else:
                            if auctions[stor12[arg1].field_1792].field_1280:
                                sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512
                                sub_b0fa2c22[arg1].field_2048 = 5
                            else:
                                require sub_b0fa2c22[arg1].field_256
                                sub_b0fa2c22[arg1].field_1280 = divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256
                                require sub_b0fa2c22[arg1].field_256
                                require divisor
                                sub_b0fa2c22[arg1].field_1024 = sub_b0fa2c22[arg1].field_512 - (divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256 * auctions[stor12[arg1].field_1792].field_0 / divisor)
                                if sub_b0fa2c22[arg1].field_512 - (divisor * sub_b0fa2c22[arg1].field_512 / sub_b0fa2c22[arg1].field_256 * auctions[stor12[arg1].field_1792].field_0 / divisor) >= 1:
                                    sub_b0fa2c22[arg1].field_1024--
                                sub_b0fa2c22[arg1].field_2048 = 3
    if sub_b0fa2c22[arg1].field_1024 > 0:
        require ext_code.size(tokenAAddress)
        if priceFeedAddress != msg.sender:
            call tokenAAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args sub_b0fa2c22[arg1].field_1536, sub_b0fa2c22[arg1].field_1024
        else:
            if sub_b0fa2c22[arg1].field_1024 <= sub_c0853e6d:
                call tokenAAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args sub_b0fa2c22[arg1].field_1536, sub_b0fa2c22[arg1].field_1024
            else:
                call tokenAAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args priceFeedAddress, sub_c0853e6d
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenAAddress)
                call tokenAAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args sub_b0fa2c22[arg1].field_1536, sub_b0fa2c22[arg1].field_1024 - sub_c0853e6d
        require ext_call.success
        require ext_call.return_data[0]
    if sub_b0fa2c22[arg1].field_1280 > 0:
        require ext_code.size(tokenBAddress)
        if priceFeedAddress != msg.sender:
            call tokenBAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args sub_b0fa2c22[arg1].field_1536, sub_b0fa2c22[arg1].field_1280
        else:
            if sub_b0fa2c22[arg1].field_1280 <= sub_736254e8:
                call tokenBAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args sub_b0fa2c22[arg1].field_1536, sub_b0fa2c22[arg1].field_1280
            else:
                call tokenBAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args priceFeedAddress, sub_736254e8
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenBAddress)
                call tokenBAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args sub_b0fa2c22[arg1].field_1536, sub_b0fa2c22[arg1].field_1280 - sub_736254e8
        require ext_call.success
        require ext_call.return_data[0]
    emit 0x96a74062: arg1, sub_b0fa2c22[arg1].field_1024, sub_b0fa2c22[arg1].field_1280, sub_b0fa2c22[arg1].field_2048, sub_b0fa2c22[arg1].field_1536
    return 1
}



}
