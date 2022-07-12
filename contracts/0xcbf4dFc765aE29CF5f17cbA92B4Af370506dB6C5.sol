contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address tokenAddress;
uint256 sub_f05d72cd;
uint256 sub_ff099c0e;
address walletAddress;
uint256 sub_571858b7;
uint256 sub_b33dda6f;
uint256 rate;
uint256 weiRaised;
mapping of struct whitelist;
mapping of uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of address stor14;
mapping of uint256 stor15;
mapping of uint256 stor16;
mapping of uint256 stor17;
mapping of uint8 stor18;
uint256 sub_411c7b69;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function sub_411c7b69(?) {
    return sub_411c7b69
}

function wallet() {
    return walletAddress
}

function sub_571858b7(?) {
    return sub_571858b7
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return whitelist[arg1].field_0
}

function sub_b33dda6f(?) {
    return sub_b33dda6f
}

function sub_f05d72cd(?) {
    return sub_f05d72cd
}

function token() {
    return tokenAddress
}

function sub_ff099c0e(?) {
    return sub_ff099c0e
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_15ee121e(?) {
    require stor13 <= stor12
    return (stor12 - stor13)
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    rate = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_669a2448(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_571858b7 = arg1
}

function sub_9e3b3ed8(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_b33dda6f = arg1
}

function setWhiteList(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    whitelist[address(arg1)].field_0 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _returnTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function subAddressToWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        whitelist[mem[(32 * idx) + 140 len 20]].field_0 = 0
        idx = idx + 1
        continue 
}

function addAddressToWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        whitelist[mem[(32 * idx) + 140 len 20]].field_0 = 1
        whitelist[mem[(32 * idx) + 140 len 20]].field_8 = 0
        idx = idx + 1
        continue 
}

function makePayment(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor13 <= stor12
    if arg1 <= stor12 - stor13:
        require stor13 + 1 >= stor13
        require stor13 + arg1 >= stor13
        idx = stor13 + 1
        s = 0
        t = 0
        u = 0
        v = 0
        w = 0
        while idx <= stor13 + arg1:
            mem[0] = idx
            mem[32] = 18
            if stor18[idx] == 1:
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                continue 
            mem[0] = idx
            mem[32] = 15
            require block.timestamp + (24 * 3600) >= block.timestamp
            require sub_ff099c0e <= block.timestamp + (24 * 3600)
            if block.timestamp + -sub_ff099c0e + (24 * 3600) / 24 * 3600 <= stor15[idx]:
                idx = idx + 1
                s = s
                t = t
                u = stor15[idx]
                v = v
                w = w
                continue 
            if not sub_411c7b69:
                require stor17[stor15[idx]] > 0
                require stor17[stor15[idx]]
                mem[100] = stor14[idx]
                mem[132] = 0 / stor17[stor15[idx]]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor14[idx], 0 / stor17[stor15[idx]]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[0] = idx
                mem[32] = 18
                stor18[idx] = 1
                stor13++
                idx = idx + 1
                s = 0 / stor17[stor15[idx]]
                t = stor17[stor15[idx]]
                u = stor15[idx]
                v = stor16[idx]
                w = stor14[idx]
                continue 
            require sub_411c7b69
            require sub_411c7b69 * stor16[idx] / sub_411c7b69 == stor16[idx]
            require stor17[stor15[idx]] > 0
            require stor17[stor15[idx]]
            mem[100] = stor14[idx]
            mem[132] = sub_411c7b69 * stor16[idx] / stor17[stor15[idx]]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor14[idx], sub_411c7b69 * stor16[idx] / stor17[stor15[idx]]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[0] = idx
            mem[32] = 18
            stor18[idx] = 1
            stor13++
            idx = idx + 1
            s = sub_411c7b69 * stor16[idx] / stor17[stor15[idx]]
            t = stor17[stor15[idx]]
            u = stor15[idx]
            v = stor16[idx]
            w = stor14[idx]
            continue 
    else:
        require stor13 <= stor12
        require stor13 + 1 >= stor13
        require stor12 >= stor13
        idx = stor13 + 1
        s = 0
        t = 0
        u = 0
        v = 0
        w = 0
        while idx <= stor12:
            mem[0] = idx
            mem[32] = 18
            if stor18[idx] == 1:
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                continue 
            mem[0] = idx
            mem[32] = 15
            require block.timestamp + (24 * 3600) >= block.timestamp
            require sub_ff099c0e <= block.timestamp + (24 * 3600)
            if block.timestamp + -sub_ff099c0e + (24 * 3600) / 24 * 3600 <= stor15[idx]:
                idx = idx + 1
                s = s
                t = t
                u = stor15[idx]
                v = v
                w = w
                continue 
            if not sub_411c7b69:
                require stor17[stor15[idx]] > 0
                require stor17[stor15[idx]]
                mem[100] = stor14[idx]
                mem[132] = 0 / stor17[stor15[idx]]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor14[idx], 0 / stor17[stor15[idx]]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[0] = idx
                mem[32] = 18
                stor18[idx] = 1
                stor13++
                idx = idx + 1
                s = 0 / stor17[stor15[idx]]
                t = stor17[stor15[idx]]
                u = stor15[idx]
                v = stor16[idx]
                w = stor14[idx]
                continue 
            require sub_411c7b69
            require sub_411c7b69 * stor16[idx] / sub_411c7b69 == stor16[idx]
            require stor17[stor15[idx]] > 0
            require stor17[stor15[idx]]
            mem[100] = stor14[idx]
            mem[132] = sub_411c7b69 * stor16[idx] / stor17[stor15[idx]]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor14[idx], sub_411c7b69 * stor16[idx] / stor17[stor15[idx]]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[0] = idx
            mem[32] = 18
            stor18[idx] = 1
            stor13++
            idx = idx + 1
            s = sub_411c7b69 * stor16[idx] / stor17[stor15[idx]]
            t = stor17[stor15[idx]]
            u = stor15[idx]
            v = stor16[idx]
            w = stor14[idx]
            continue 
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require arg1
    require msg.value
    require block.timestamp >= sub_f05d72cd
    require block.timestamp <= sub_ff099c0e + (5784 * 24 * 3600)
    if block.timestamp < sub_f05d72cd:
        if block.timestamp >= sub_ff099c0e:
            if block.timestamp < sub_ff099c0e + (5784 * 24 * 3600):
                stor12++
                stor14[stor12] = msg.sender
                stor16[stor12] = msg.value
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                stor15[stor12] = block.timestamp + -sub_ff099c0e + (24 * 3600) / 24 * 3600
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                stor17[block.timestamp + -stor4 + (24 * 3600) / 24 * 3600] += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp >= sub_ff099c0e:
            if block.timestamp < sub_ff099c0e + (5784 * 24 * 3600):
                stor12++
                stor14[stor12] = msg.sender
                stor16[stor12] = msg.value
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                stor15[stor12] = block.timestamp + -sub_ff099c0e + (24 * 3600) / 24 * 3600
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                stor17[block.timestamp + -stor4 + (24 * 3600) / 24 * 3600] += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require whitelist[address(msg.sender)].field_0 == 1
            require msg.value >= sub_b33dda6f
            stor11[address(msg.sender)] += msg.value
            require stor11[address(msg.sender)] <= sub_571858b7
            if block.timestamp < sub_f05d72cd:
                if msg.value:
                    require msg.value
                    require 10^6 * msg.value / msg.value == 10^6
                    if 10^6 * msg.value:
                        require 10^6 * msg.value
                        require not 0 / 10^6 * msg.value
                require rate > 0
                require rate
                if not msg.value:
                    require rate > 0
                    require rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (0 / rate) + (0 / rate / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, arg1);
                else:
                    require msg.value
                    require 10^6 * msg.value / msg.value == 10^6
                    require rate > 0
                    require rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (10^6 * msg.value / rate) + (0 / rate / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, arg1);
            else:
                if block.timestamp < sub_f05d72cd + (120 * 24 * 3600):
                    if not msg.value:
                        require rate > 0
                        require rate
                        if not msg.value:
                            require rate > 0
                            require rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / rate) + (0 / rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, arg1);
                        else:
                            require msg.value
                            require 10^6 * msg.value / msg.value == 10^6
                            require rate > 0
                            require rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (10^6 * msg.value / rate) + (0 / rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, arg1);
                    else:
                        require msg.value
                        require 10^6 * msg.value / msg.value == 10^6
                        if not 10^6 * msg.value:
                            require rate > 0
                            require rate
                            if not msg.value:
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (0 / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, arg1);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (10^6 * msg.value / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, arg1);
                        else:
                            require 10^6 * msg.value
                            require 20 * 10^6 * msg.value / 10^6 * msg.value == 20
                            require rate > 0
                            require rate
                            if not msg.value:
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (0 / rate) + (20 * 10^6 * msg.value / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (0 / rate) + (20 * 10^6 * msg.value / rate / 100), msg.sender, arg1);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (10^6 * msg.value / rate) + (20 * 10^6 * msg.value / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (20 * 10^6 * msg.value / rate / 100), msg.sender, arg1);
                else:
                    if block.timestamp < sub_f05d72cd + (240 * 24 * 3600):
                        if not msg.value:
                            require rate > 0
                            require rate
                            if not msg.value:
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (0 / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, arg1);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (10^6 * msg.value / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, arg1);
                        else:
                            require msg.value
                            require 10^6 * msg.value / msg.value == 10^6
                            if not 10^6 * msg.value:
                                require rate > 0
                                require rate
                                if not msg.value:
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (0 / rate) + (0 / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, arg1);
                                else:
                                    require msg.value
                                    require 10^6 * msg.value / msg.value == 10^6
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (10^6 * msg.value / rate) + (0 / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, arg1);
                            else:
                                require 10^6 * msg.value
                                require 10 * 10^6 * msg.value / 10^6 * msg.value == 10
                                require rate > 0
                                require rate
                                if not msg.value:
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (0 / rate) + (10 * 10^6 * msg.value / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (0 / rate) + (10 * 10^6 * msg.value / rate / 100), msg.sender, arg1);
                                else:
                                    require msg.value
                                    require 10^6 * msg.value / msg.value == 10^6
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (10^6 * msg.value / rate) + (10 * 10^6 * msg.value / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (10 * 10^6 * msg.value / rate / 100), msg.sender, arg1);
                    else:
                        if block.timestamp >= sub_f05d72cd + (360 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                if 10^6 * msg.value:
                                    require 10^6 * msg.value
                                    require not 0 / 10^6 * msg.value
                            require rate > 0
                            require rate
                            if not msg.value:
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (0 / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, arg1);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (10^6 * msg.value / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, arg1);
                        else:
                            if not msg.value:
                                require rate > 0
                                require rate
                                if not msg.value:
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (0 / rate) + (0 / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, arg1);
                                else:
                                    require msg.value
                                    require 10^6 * msg.value / msg.value == 10^6
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (10^6 * msg.value / rate) + (0 / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, arg1);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                if not 10^6 * msg.value:
                                    require rate > 0
                                    require rate
                                    if not msg.value:
                                        require rate > 0
                                        require rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (0 / rate) + (0 / rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, arg1);
                                    else:
                                        require msg.value
                                        require 10^6 * msg.value / msg.value == 10^6
                                        require rate > 0
                                        require rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (10^6 * msg.value / rate) + (0 / rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, arg1);
                                else:
                                    require 10^6 * msg.value
                                    require 5 * 10^6 * msg.value / 10^6 * msg.value == 5
                                    require rate > 0
                                    require rate
                                    if not msg.value:
                                        require rate > 0
                                        require rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (0 / rate) + (5 * 10^6 * msg.value / rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (0 / rate) + (5 * 10^6 * msg.value / rate / 100), msg.sender, arg1);
                                    else:
                                        require msg.value
                                        require 10^6 * msg.value / msg.value == 10^6
                                        require rate > 0
                                        require rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (10^6 * msg.value / rate) + (5 * 10^6 * msg.value / rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (5 * 10^6 * msg.value / rate / 100), msg.sender, arg1);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp >= sub_ff099c0e:
                if block.timestamp < sub_ff099c0e + (5784 * 24 * 3600):
                    stor12++
                    stor14[stor12] = msg.sender
                    stor16[stor12] = msg.value
                    require block.timestamp + (24 * 3600) >= block.timestamp
                    require sub_ff099c0e <= block.timestamp + (24 * 3600)
                    stor15[stor12] = block.timestamp + -sub_ff099c0e + (24 * 3600) / 24 * 3600
                    require block.timestamp + (24 * 3600) >= block.timestamp
                    require sub_ff099c0e <= block.timestamp + (24 * 3600)
                    require block.timestamp + (24 * 3600) >= block.timestamp
                    require sub_ff099c0e <= block.timestamp + (24 * 3600)
                    stor17[block.timestamp + -stor4 + (24 * 3600) / 24 * 3600] += msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function _fallback() payable {
    stor0++
    require msg.sender
    require msg.value
    require block.timestamp >= sub_f05d72cd
    require block.timestamp <= sub_ff099c0e + (5784 * 24 * 3600)
    if block.timestamp < sub_f05d72cd:
        if block.timestamp >= sub_ff099c0e:
            if block.timestamp < sub_ff099c0e + (5784 * 24 * 3600):
                stor12++
                stor14[stor12] = msg.sender
                stor16[stor12] = msg.value
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                stor15[stor12] = block.timestamp + -sub_ff099c0e + (24 * 3600) / 24 * 3600
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                stor17[block.timestamp + -stor4 + (24 * 3600) / 24 * 3600] += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp >= sub_ff099c0e:
            if block.timestamp < sub_ff099c0e + (5784 * 24 * 3600):
                stor12++
                stor14[stor12] = msg.sender
                stor16[stor12] = msg.value
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                stor15[stor12] = block.timestamp + -sub_ff099c0e + (24 * 3600) / 24 * 3600
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                require block.timestamp + (24 * 3600) >= block.timestamp
                require sub_ff099c0e <= block.timestamp + (24 * 3600)
                stor17[block.timestamp + -stor4 + (24 * 3600) / 24 * 3600] += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require whitelist[address(msg.sender)].field_0 == 1
            require msg.value >= sub_b33dda6f
            stor11[address(msg.sender)] += msg.value
            require stor11[address(msg.sender)] <= sub_571858b7
            if block.timestamp < sub_f05d72cd:
                if msg.value:
                    require msg.value
                    require 10^6 * msg.value / msg.value == 10^6
                    if 10^6 * msg.value:
                        require 10^6 * msg.value
                        require not 0 / 10^6 * msg.value
                require rate > 0
                require rate
                if not msg.value:
                    require rate > 0
                    require rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / rate) + (0 / rate / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, msg.sender);
                else:
                    require msg.value
                    require 10^6 * msg.value / msg.value == 10^6
                    require rate > 0
                    require rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (10^6 * msg.value / rate) + (0 / rate / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, msg.sender);
            else:
                if block.timestamp < sub_f05d72cd + (120 * 24 * 3600):
                    if not msg.value:
                        require rate > 0
                        require rate
                        if not msg.value:
                            require rate > 0
                            require rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / rate) + (0 / rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, msg.sender);
                        else:
                            require msg.value
                            require 10^6 * msg.value / msg.value == 10^6
                            require rate > 0
                            require rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^6 * msg.value / rate) + (0 / rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, msg.sender);
                    else:
                        require msg.value
                        require 10^6 * msg.value / msg.value == 10^6
                        if not 10^6 * msg.value:
                            require rate > 0
                            require rate
                            if not msg.value:
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, msg.sender);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^6 * msg.value / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, msg.sender);
                        else:
                            require 10^6 * msg.value
                            require 20 * 10^6 * msg.value / 10^6 * msg.value == 20
                            require rate > 0
                            require rate
                            if not msg.value:
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / rate) + (20 * 10^6 * msg.value / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (0 / rate) + (20 * 10^6 * msg.value / rate / 100), msg.sender, msg.sender);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^6 * msg.value / rate) + (20 * 10^6 * msg.value / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (20 * 10^6 * msg.value / rate / 100), msg.sender, msg.sender);
                else:
                    if block.timestamp < sub_f05d72cd + (240 * 24 * 3600):
                        if not msg.value:
                            require rate > 0
                            require rate
                            if not msg.value:
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, msg.sender);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^6 * msg.value / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, msg.sender);
                        else:
                            require msg.value
                            require 10^6 * msg.value / msg.value == 10^6
                            if not 10^6 * msg.value:
                                require rate > 0
                                require rate
                                if not msg.value:
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / rate) + (0 / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require 10^6 * msg.value / msg.value == 10^6
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (10^6 * msg.value / rate) + (0 / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, msg.sender);
                            else:
                                require 10^6 * msg.value
                                require 10 * 10^6 * msg.value / 10^6 * msg.value == 10
                                require rate > 0
                                require rate
                                if not msg.value:
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / rate) + (10 * 10^6 * msg.value / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (0 / rate) + (10 * 10^6 * msg.value / rate / 100), msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require 10^6 * msg.value / msg.value == 10^6
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (10^6 * msg.value / rate) + (10 * 10^6 * msg.value / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (10 * 10^6 * msg.value / rate / 100), msg.sender, msg.sender);
                    else:
                        if block.timestamp >= sub_f05d72cd + (360 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                if 10^6 * msg.value:
                                    require 10^6 * msg.value
                                    require not 0 / 10^6 * msg.value
                            require rate > 0
                            require rate
                            if not msg.value:
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, msg.sender);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                require rate > 0
                                require rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^6 * msg.value / rate) + (0 / rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, msg.sender);
                        else:
                            if not msg.value:
                                require rate > 0
                                require rate
                                if not msg.value:
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / rate) + (0 / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require 10^6 * msg.value / msg.value == 10^6
                                    require rate > 0
                                    require rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (10^6 * msg.value / rate) + (0 / rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, msg.sender);
                            else:
                                require msg.value
                                require 10^6 * msg.value / msg.value == 10^6
                                if not 10^6 * msg.value:
                                    require rate > 0
                                    require rate
                                    if not msg.value:
                                        require rate > 0
                                        require rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / rate) + (0 / rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (0 / rate) + (0 / rate / 100), msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require 10^6 * msg.value / msg.value == 10^6
                                        require rate > 0
                                        require rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (10^6 * msg.value / rate) + (0 / rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (0 / rate / 100), msg.sender, msg.sender);
                                else:
                                    require 10^6 * msg.value
                                    require 5 * 10^6 * msg.value / 10^6 * msg.value == 5
                                    require rate > 0
                                    require rate
                                    if not msg.value:
                                        require rate > 0
                                        require rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / rate) + (5 * 10^6 * msg.value / rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (0 / rate) + (5 * 10^6 * msg.value / rate / 100), msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require 10^6 * msg.value / msg.value == 10^6
                                        require rate > 0
                                        require rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (10^6 * msg.value / rate) + (5 * 10^6 * msg.value / rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (10^6 * msg.value / rate) + (5 * 10^6 * msg.value / rate / 100), msg.sender, msg.sender);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp >= sub_ff099c0e:
                if block.timestamp < sub_ff099c0e + (5784 * 24 * 3600):
                    stor12++
                    stor14[stor12] = msg.sender
                    stor16[stor12] = msg.value
                    require block.timestamp + (24 * 3600) >= block.timestamp
                    require sub_ff099c0e <= block.timestamp + (24 * 3600)
                    stor15[stor12] = block.timestamp + -sub_ff099c0e + (24 * 3600) / 24 * 3600
                    require block.timestamp + (24 * 3600) >= block.timestamp
                    require sub_ff099c0e <= block.timestamp + (24 * 3600)
                    require block.timestamp + (24 * 3600) >= block.timestamp
                    require sub_ff099c0e <= block.timestamp + (24 * 3600)
                    stor17[block.timestamp + -stor4 + (24 * 3600) / 24 * 3600] += msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}



}
