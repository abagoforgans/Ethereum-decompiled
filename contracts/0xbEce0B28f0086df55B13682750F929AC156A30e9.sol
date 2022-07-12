contract main {




// =====================  Runtime code  =====================


const sub_6f43938c(?) = 3


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint8 stor7;
address sub_3ba1a41aAddress;
mapping of uint256 sub_1fb562bf;
address crowdsaleAddress;
array of uint256 issuer;
array of uint256 assetType;
array of uint256 sub_0a3ae6f9;
uint8 stor14;
uint8 stor14; offset 8
uint256 maximumSupply;
uint256 soldSupply;
uint256 crowdsaleCap;
address sub_f4dc8c0dAddress;
uint8 stor19;
uint256 sub_f88ab36c;
array of struct stor20;
array of uint256 stor21;
array of uint256 stor22;

function maximumSupply() {
    return maximumSupply
}

function name() {
    return name[0 len name.length]
}

function sub_0a3ae6f9(?) {
    return sub_0a3ae6f9[0 len sub_0a3ae6f9.length]
}

function totalSupply() {
    return totalSupply
}

function issuer() {
    return issuer[0 len issuer.length]
}

function sub_1fb562bf(?) {
    return sub_1fb562bf[arg1]
}

function decimals() {
    return decimals
}

function sub_3ba1a41a(?) {
    return sub_3ba1a41aAddress
}

function assetType() {
    return assetType[0 len assetType.length]
}

function crowdsaleCap() {
    return crowdsaleCap
}

function tradable() {
    return bool(uint8(stor14.field_8))
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

function whitelist(address arg1) {
    return bool(stor7[arg1])
}

function crowdsale() {
    return crowdsaleAddress
}

function sub_b6019ff3(?) {
    return bool(uint8(stor14.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f4dc8c0d(?) {
    return sub_f4dc8c0dAddress
}

function sub_f88ab36c(?) {
    return uint256(sub_f88ab36c)
}

function soldSupply() {
    return soldSupply
}

function _fallback() payable {
    revert
}

function sub_619ba01d(?) {
    return (sub_1fb562bf[address(arg1)] > 0)
}

function sub_a6f1a5e2(?) {
    return balanceOf[address(arg1)], sub_1fb562bf[address(arg1)]
}

function sub_32f8c2a9(?) {
    require soldSupply <= totalSupply
    return (totalSupply - soldSupply)
}

function sub_c1ac4d18(?) {
    require msg.sender == owner
    sub_f4dc8c0dAddress = arg1
    emit 0x6f1fd65b: sub_f4dc8c0dAddress, arg1
}

function enableTrading() {
    require msg.sender == owner
    require not uint8(stor14.field_8)
    uint8(stor14.field_8) = 1
    emit TradingEnabled()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ddbdebc3(?) {
    if 0 == uint256(sub_f88ab36c):
        return 0
    if 3 <= uint256(sub_f88ab36c):
        return 3
    return uint8(stor19)
}

function sub_dac96d4a(?) {
    if not sub_1fb562bf[msg.sender]:
        sub_1fb562bf[address(msg.sender)] = block.timestamp
        emit 0x448c5615: msg.sender
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    if stor7[address(arg1)]:
        return 0
    stor7[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    if not stor7[address(arg1)]:
        return 0
    stor7[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if not uint8(stor14.field_8):
        require stor7[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_262322ca(?) {
    require arg1 > 0
    require 1 <= arg1
    require uint8(arg1 - 1 % 3) < 3
    if arg1 == stor21[2 * uint8(arg1 - 1 % 3)]:
        return stor22[2 * uint8(arg1 - 1 % 3)], 1
    else:
        return 0
}

function sub_997dcf27(?) {
    require soldSupply <= totalSupply
    require crowdsaleCap <= maximumSupply
    require totalSupply - soldSupply <= maximumSupply - crowdsaleCap
    return (maximumSupply - crowdsaleCap - totalSupply + soldSupply)
}

function sub_c1707420(?) {
    if 0 == uint256(sub_f88ab36c):
        return 0
    if 3 > uint256(sub_f88ab36c):
        return 1
    require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
    require 3 <= uint256(sub_f88ab36c) + 1
    return (uint256(sub_f88ab36c) - 2)
}

function sub_25e26a53(?) {
    require sub_f4dc8c0dAddress
    require msg.sender == sub_f4dc8c0dAddress
    require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
    uint256(sub_f88ab36c)++
    emit 0x10e9fa35: uint256(sub_f88ab36c) + 1
    return uint256(sub_f88ab36c)
}

function sub_f073579f(?) {
    require crowdsaleAddress
    require msg.sender == crowdsaleAddress
    require arg1 >= soldSupply
    require totalSupply <= maximumSupply
    require soldSupply >= 0
    require arg1 <= soldSupply + maximumSupply - totalSupply
    crowdsaleCap = arg1
    emit 0x7c1f6385: crowdsaleCap, arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    if not uint8(stor14.field_8):
        require stor7[msg.sender]
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_dfeb9de4(?) {
    require arg1
    require arg1 != this.address
    require crowdsaleAddress != arg1
    require arg2 > 0
    require 1 <= arg2
    require uint8(arg2 - 1 % 3) < 3
    if stor20[address(arg1)][2 * uint8(arg2 - 1 % 3)].field_0 == arg2:
        return stor20[address(arg1)][2 * uint8(arg2 - 1 % 3)].field_256, 1
    else:
        return 0
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not uint8(stor14.field_8):
        require stor7[msg.sender]
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function addAddressesToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        if stor7[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        if not stor7[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[address(mem[(32 * idx) + 128])] = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function sub_31ac2ec3(?) {
    require arg1
    require arg1 != this.address
    require crowdsaleAddress != arg1
    require arg2 > 0
    require 1 <= arg2
    require uint8(arg2 - 1 % 3) < 3
    if stor20[address(arg1)][2 * uint8(arg2 - 1 % 3)].field_0 > arg2:
        return 0
    if arg2 != stor20[address(arg1)][2 * uint8(arg2 - 1 % 3)].field_0:
        if balanceOf[address(arg1)] <= 0:
            return 0
        if 0 <= balanceOf[address(arg1)]:
            return balanceOf[address(arg1)], 0
    else:
        if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(arg2 - 1 % 3)].field_256:
            return 0, 1
        if stor20[address(arg1)][2 * uint8(arg2 - 1 % 3)].field_256 <= balanceOf[address(arg1)]:
            return balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(arg2 - 1 % 3)].field_256, 1
    revert
}

function sub_9936e830(?) {
    require msg.sender == owner
    crowdsaleAddress = 0
    crowdsaleCap = soldSupply
    if crowdsaleAddress:
        if not arg2:
            require ext_code.size(crowdsaleAddress)
            call crowdsaleAddress.deactivate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        require ext_code.size(arg1)
        call arg1.activate(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args soldSupply, totalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= soldSupply
        require totalSupply <= maximumSupply
        require soldSupply >= 0
        require ext_call.return_data[0] <= soldSupply + maximumSupply - totalSupply
        crowdsaleAddress = arg1
        crowdsaleCap = ext_call.return_data[0]
    emit CrowdsaleChanged(crowdsaleAddress, arg1);
    emit 0x7c1f6385: crowdsaleCap, crowdsaleCap
}

function sub_d4763148(?) {
    mem[96] = 0xd476314800000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_3ba1a41aAddress)
    call sub_3ba1a41aAddress.0xd4763148 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}

function mint(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require crowdsaleAddress != arg1
    if not crowdsaleAddress:
        require msg.sender == owner
        require soldSupply <= totalSupply
        require crowdsaleCap <= maximumSupply
        require totalSupply - soldSupply <= maximumSupply - crowdsaleCap
        require maximumSupply - crowdsaleCap - totalSupply + soldSupply >= arg2
    else:
        if msg.sender == crowdsaleAddress:
            require soldSupply <= crowdsaleCap
            require crowdsaleCap - soldSupply >= arg2
            require arg2 + soldSupply >= soldSupply
            soldSupply += arg2
        else:
            require msg.sender == owner
            require soldSupply <= totalSupply
            require crowdsaleCap <= maximumSupply
            require totalSupply - soldSupply <= maximumSupply - crowdsaleCap
            require maximumSupply - crowdsaleCap - totalSupply + soldSupply >= arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require maximumSupply >= arg2 + totalSupply
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function sub_56c37690(?) {
    mem[96 len 96] = code.data[10100 len 96]
    mem[192 len 96] = code.data[10100 len 96]
    if 0 == uint256(sub_f88ab36c):
        return 0, code.data[10100 len 96], code.data[10100 len 96]
    if 3 <= uint256(sub_f88ab36c):
        require uint256(sub_f88ab36c) != 0
        if 3 > uint256(sub_f88ab36c):
            s = 0
            idx = 0
            while idx < 3:
                require idx + 1 >= 1
                require idx < 3
                mem[(32 * idx) + 192] = idx + 1
                require idx + 1 > 0
                require 1 <= idx + 1
                require uint8(idx % 3) < 3
                require idx < 3
                if idx + 1 == stor21[2 * uint8(idx % 3)]:
                    mem[(32 * idx) + 96] = stor22[2 * uint8(idx % 3)]
                else:
                    mem[(32 * idx) + 96] = 0
                s = idx + 1
                idx = idx + 1
                continue 
        else:
            require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
            require 3 <= uint256(sub_f88ab36c) + 1
            s = 0
            idx = 0
            while idx < 3:
                require idx >= 0
                require idx < 3
                mem[(32 * idx) + 192] = idx + uint256(sub_f88ab36c) - 2
                require idx + uint256(sub_f88ab36c) - 2 > 0
                require 1 <= idx + uint256(sub_f88ab36c) - 2
                require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                require idx < 3
                if idx + uint256(sub_f88ab36c) - 2 == stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)]:
                    mem[(32 * idx) + 96] = stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                else:
                    mem[(32 * idx) + 96] = 0
                s = idx + uint256(sub_f88ab36c) - 2
                idx = idx + 1
                continue 
        return 3, mem[96 len 96], mem[192 len 96]
    if uint8(stor19) <= 0:
        return uint8(stor19), code.data[10100 len 96], code.data[10100 len 96]
    if 0 == uint256(sub_f88ab36c):
        require 0 >= uint8(stor19)
        return uint8(stor19), code.data[10100 len 96], code.data[10100 len 96]
    if 3 > uint256(sub_f88ab36c):
        s = 0
        idx = 0
        while idx < uint8(stor19):
            require idx + 1 >= 1
            require idx < 3
            mem[(32 * idx) + 192] = idx + 1
            require idx + 1 > 0
            require 1 <= idx + 1
            require uint8(idx % 3) < 3
            require idx < 3
            if idx + 1 == stor21[2 * uint8(idx % 3)]:
                mem[(32 * idx) + 96] = stor22[2 * uint8(idx % 3)]
            else:
                mem[(32 * idx) + 96] = 0
            s = idx + 1
            idx = idx + 1
            continue 
    else:
        require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
        require 3 <= uint256(sub_f88ab36c) + 1
        s = 0
        idx = 0
        while idx < uint8(stor19):
            require idx >= 0
            require idx < 3
            mem[(32 * idx) + 192] = idx + uint256(sub_f88ab36c) - 2
            require idx + uint256(sub_f88ab36c) - 2 > 0
            require 1 <= idx + uint256(sub_f88ab36c) - 2
            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
            require idx < 3
            if idx + uint256(sub_f88ab36c) - 2 == stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)]:
                mem[(32 * idx) + 96] = stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
            else:
                mem[(32 * idx) + 96] = 0
            s = idx + uint256(sub_f88ab36c) - 2
            idx = idx + 1
            continue 
    return uint8(stor19), mem[96 len 96], mem[192 len 96]
}

function sub_55f03ac4(?) {
    mem[96 len 96] = code.data[10100 len 96]
    mem[192 len 96] = code.data[10100 len 96]
    require arg1
    require arg1 != this.address
    require crowdsaleAddress != arg1
    if uint256(sub_f88ab36c) != 0:
        if 3 <= uint256(sub_f88ab36c):
            if uint256(sub_f88ab36c) != 0:
                if 3 <= uint256(sub_f88ab36c):
                    require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
                    require 3 <= uint256(sub_f88ab36c) + 1
                    s = 0
                    idx = 0
                    while idx < 3:
                        require idx >= 0
                        require idx < 3
                        mem[(32 * idx) + 192] = idx + uint256(sub_f88ab36c) - 2
                        require arg1
                        require arg1 != this.address
                        require crowdsaleAddress != arg1
                        require idx + uint256(sub_f88ab36c) - 2 > 0
                        mem[0] = arg1
                        mem[32] = 20
                        require 1 <= idx + uint256(sub_f88ab36c) - 2
                        require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                        if stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 == idx + uint256(sub_f88ab36c) - 2:
                            require idx < 3
                            mem[(32 * idx) + 96] = stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                            s = idx + uint256(sub_f88ab36c) - 2
                            idx = idx + 1
                            continue 
                        else:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                            s = idx + uint256(sub_f88ab36c) - 2
                            idx = idx + 1
                            continue 
                    return 3, mem[96 len 96], mem[192 len 96]
                else:
                    s = 0
                    idx = 0
                    while idx < 3:
                        require idx + 1 >= 1
                        require idx < 3
                        mem[(32 * idx) + 192] = idx + 1
                        require arg1
                        require arg1 != this.address
                        require crowdsaleAddress != arg1
                        require idx + 1 > 0
                        mem[0] = arg1
                        mem[32] = 20
                        require 1 <= idx + 1
                        require uint8(idx % 3) < 3
                        if stor20[address(arg1)][2 * uint8(idx % 3)].field_0 == idx + 1:
                            require idx < 3
                            mem[(32 * idx) + 96] = stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        else:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                            s = idx + 1
                            idx = idx + 1
                            continue 
                    return 3, mem[96 len 96], mem[192 len 96]
            else:
                require arg1
                require arg1 != this.address
                require crowdsaleAddress == arg1
                revert
        else:
            if uint8(stor19) > 0:
                if uint256(sub_f88ab36c) != 0:
                    if 3 <= uint256(sub_f88ab36c):
                        require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
                        require 3 <= uint256(sub_f88ab36c) + 1
                        s = 0
                        idx = 0
                        while idx < uint8(stor19):
                            require idx >= 0
                            require idx < 3
                            mem[(32 * idx) + 192] = idx + uint256(sub_f88ab36c) - 2
                            require arg1
                            require arg1 != this.address
                            require crowdsaleAddress != arg1
                            require idx + uint256(sub_f88ab36c) - 2 > 0
                            mem[0] = arg1
                            mem[32] = 20
                            require 1 <= idx + uint256(sub_f88ab36c) - 2
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            if stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 == idx + uint256(sub_f88ab36c) - 2:
                                require idx < 3
                                mem[(32 * idx) + 96] = stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                s = idx + uint256(sub_f88ab36c) - 2
                                idx = idx + 1
                                continue 
                            else:
                                require idx < 3
                                mem[(32 * idx) + 96] = 0
                                s = idx + uint256(sub_f88ab36c) - 2
                                idx = idx + 1
                                continue 
                        return uint8(stor19), mem[96 len 96], mem[192 len 96]
                    else:
                        s = 0
                        idx = 0
                        while idx < uint8(stor19):
                            require idx + 1 >= 1
                            require idx < 3
                            mem[(32 * idx) + 192] = idx + 1
                            require arg1
                            require arg1 != this.address
                            require crowdsaleAddress != arg1
                            require idx + 1 > 0
                            mem[0] = arg1
                            mem[32] = 20
                            require 1 <= idx + 1
                            require uint8(idx % 3) < 3
                            if stor20[address(arg1)][2 * uint8(idx % 3)].field_0 == idx + 1:
                                require idx < 3
                                mem[(32 * idx) + 96] = stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            else:
                                require idx < 3
                                mem[(32 * idx) + 96] = 0
                                s = idx + 1
                                idx = idx + 1
                                continue 
                        return uint8(stor19), mem[96 len 96], mem[192 len 96]
                else:
                    if 0 >= uint8(stor19):
                        return uint8(stor19), code.data[10100 len 96], code.data[10100 len 96]
                    else:
                        require arg1
                        require arg1 != this.address
                        require crowdsaleAddress == arg1
                        revert
            else:
                return uint8(stor19), code.data[10100 len 96], code.data[10100 len 96]
    else:
        return 0, code.data[10100 len 96], code.data[10100 len 96]
}

function sub_e9deacf4(?) {
    mem[96 len 96] = code.data[10100 len 96]
    mem[192 len 96] = code.data[10100 len 96]
    require arg1
    require arg1 != this.address
    require crowdsaleAddress != arg1
    if uint256(sub_f88ab36c) != 0:
        if 3 <= uint256(sub_f88ab36c):
            if uint256(sub_f88ab36c) != 0:
                if 3 <= uint256(sub_f88ab36c):
                    require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
                    require 3 <= uint256(sub_f88ab36c) + 1
                    s = 0
                    idx = 0
                    while idx < 3:
                        require idx >= 0
                        require idx < 3
                        mem[(32 * idx) + 192] = idx + uint256(sub_f88ab36c) - 2
                        require arg1
                        require arg1 != this.address
                        require crowdsaleAddress != arg1
                        require idx + uint256(sub_f88ab36c) - 2 > 0
                        mem[0] = arg1
                        mem[32] = 20
                        require 1 <= idx + uint256(sub_f88ab36c) - 2
                        require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                        if stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 <= idx + uint256(sub_f88ab36c) - 2:
                            if idx + uint256(sub_f88ab36c) - 2 != stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                if balanceOf[address(arg1)] <= 0:
                                    require idx < 3
                                    mem[(32 * idx) + 96] = 0
                                    s = idx + uint256(sub_f88ab36c) - 2
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 0 <= balanceOf[address(arg1)]
                                    require idx < 3
                                    mem[(32 * idx) + 96] = balanceOf[address(arg1)]
                                    s = idx + uint256(sub_f88ab36c) - 2
                                    idx = idx + 1
                                    continue 
                            else:
                                if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256:
                                    require idx < 3
                                    mem[(32 * idx) + 96] = 0
                                    s = idx + uint256(sub_f88ab36c) - 2
                                    idx = idx + 1
                                    continue 
                                else:
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= balanceOf[address(arg1)]
                                    require idx < 3
                                    mem[(32 * idx) + 96] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    s = idx + uint256(sub_f88ab36c) - 2
                                    idx = idx + 1
                                    continue 
                        else:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                            s = idx + uint256(sub_f88ab36c) - 2
                            idx = idx + 1
                            continue 
                    return 3, mem[96 len 96], mem[192 len 96]
                else:
                    s = 0
                    idx = 0
                    while idx < 3:
                        require idx + 1 >= 1
                        require idx < 3
                        mem[(32 * idx) + 192] = idx + 1
                        require arg1
                        require arg1 != this.address
                        require crowdsaleAddress != arg1
                        require idx + 1 > 0
                        mem[0] = arg1
                        mem[32] = 20
                        require 1 <= idx + 1
                        require uint8(idx % 3) < 3
                        if stor20[address(arg1)][2 * uint8(idx % 3)].field_0 <= idx + 1:
                            if idx + 1 != stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                                if balanceOf[address(arg1)] <= 0:
                                    require idx < 3
                                    mem[(32 * idx) + 96] = 0
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 0 <= balanceOf[address(arg1)]
                                    require idx < 3
                                    mem[(32 * idx) + 96] = balanceOf[address(arg1)]
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                            else:
                                if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256:
                                    require idx < 3
                                    mem[(32 * idx) + 96] = 0
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                else:
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= balanceOf[address(arg1)]
                                    require idx < 3
                                    mem[(32 * idx) + 96] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                        else:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                            s = idx + 1
                            idx = idx + 1
                            continue 
                    return 3, mem[96 len 96], mem[192 len 96]
            else:
                require arg1
                require arg1 != this.address
                require crowdsaleAddress == arg1
                revert
        else:
            if uint8(stor19) > 0:
                if uint256(sub_f88ab36c) != 0:
                    if 3 <= uint256(sub_f88ab36c):
                        require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
                        require 3 <= uint256(sub_f88ab36c) + 1
                        s = 0
                        idx = 0
                        while idx < uint8(stor19):
                            require idx >= 0
                            require idx < 3
                            mem[(32 * idx) + 192] = idx + uint256(sub_f88ab36c) - 2
                            require arg1
                            require arg1 != this.address
                            require crowdsaleAddress != arg1
                            require idx + uint256(sub_f88ab36c) - 2 > 0
                            mem[0] = arg1
                            mem[32] = 20
                            require 1 <= idx + uint256(sub_f88ab36c) - 2
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            if stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 <= idx + uint256(sub_f88ab36c) - 2:
                                if idx + uint256(sub_f88ab36c) - 2 != stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    if balanceOf[address(arg1)] <= 0:
                                        require idx < 3
                                        mem[(32 * idx) + 96] = 0
                                        s = idx + uint256(sub_f88ab36c) - 2
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 0 <= balanceOf[address(arg1)]
                                        require idx < 3
                                        mem[(32 * idx) + 96] = balanceOf[address(arg1)]
                                        s = idx + uint256(sub_f88ab36c) - 2
                                        idx = idx + 1
                                        continue 
                                else:
                                    if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256:
                                        require idx < 3
                                        mem[(32 * idx) + 96] = 0
                                        s = idx + uint256(sub_f88ab36c) - 2
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= balanceOf[address(arg1)]
                                        require idx < 3
                                        mem[(32 * idx) + 96] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                        s = idx + uint256(sub_f88ab36c) - 2
                                        idx = idx + 1
                                        continue 
                            else:
                                require idx < 3
                                mem[(32 * idx) + 96] = 0
                                s = idx + uint256(sub_f88ab36c) - 2
                                idx = idx + 1
                                continue 
                        return uint8(stor19), mem[96 len 96], mem[192 len 96]
                    else:
                        s = 0
                        idx = 0
                        while idx < uint8(stor19):
                            require idx + 1 >= 1
                            require idx < 3
                            mem[(32 * idx) + 192] = idx + 1
                            require arg1
                            require arg1 != this.address
                            require crowdsaleAddress != arg1
                            require idx + 1 > 0
                            mem[0] = arg1
                            mem[32] = 20
                            require 1 <= idx + 1
                            require uint8(idx % 3) < 3
                            if stor20[address(arg1)][2 * uint8(idx % 3)].field_0 <= idx + 1:
                                if idx + 1 != stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                                    if balanceOf[address(arg1)] <= 0:
                                        require idx < 3
                                        mem[(32 * idx) + 96] = 0
                                        s = idx + 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 0 <= balanceOf[address(arg1)]
                                        require idx < 3
                                        mem[(32 * idx) + 96] = balanceOf[address(arg1)]
                                        s = idx + 1
                                        idx = idx + 1
                                        continue 
                                else:
                                    if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256:
                                        require idx < 3
                                        mem[(32 * idx) + 96] = 0
                                        s = idx + 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= balanceOf[address(arg1)]
                                        require idx < 3
                                        mem[(32 * idx) + 96] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                        s = idx + 1
                                        idx = idx + 1
                                        continue 
                            else:
                                require idx < 3
                                mem[(32 * idx) + 96] = 0
                                s = idx + 1
                                idx = idx + 1
                                continue 
                        return uint8(stor19), mem[96 len 96], mem[192 len 96]
                else:
                    if 0 >= uint8(stor19):
                        return uint8(stor19), code.data[10100 len 96], code.data[10100 len 96]
                    else:
                        require arg1
                        require arg1 != this.address
                        require crowdsaleAddress == arg1
                        revert
            else:
                return uint8(stor19), code.data[10100 len 96], code.data[10100 len 96]
    else:
        return 0, code.data[10100 len 96], code.data[10100 len 96]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require crowdsaleAddress != arg2
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
    if uint256(sub_f88ab36c) != 0:
        if 3 > uint256(sub_f88ab36c):
            if uint256(sub_f88ab36c) != 0:
                if 3 <= uint256(sub_f88ab36c):
                    s = 0
                    idx = 0
                    while idx < 3:
                        require idx + 1 >= 1
                        require 1 <= idx + 1
                        require uint8(idx % 3) < 3
                        if idx + 1 == stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                            require uint8(idx % 3) < 3
                            require uint8(idx % 3) < 3
                            require uint8(idx % 3) < 3
                            if arg3 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256:
                                if idx + 1 == stor20[address(arg2)][2 * uint8(idx % 3)].field_0:
                                    require arg3 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 -= arg3
                                    require arg3 + stor20[address(arg2)][2 * uint8(idx % 3)].field_256 >= stor20[address(arg2)][2 * uint8(idx % 3)].field_256
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_256 += arg3
                                else:
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_0 = idx + 1
                                    require arg3 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 -= arg3
                                    require arg3 >= 0
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_256 = arg3
                                mem[96] = idx + 1
                                mem[128] = arg3
                                emit 0xfe327a03: idx + 1, arg3, arg1, arg2
                            else:
                                if idx + 1 == stor20[address(arg2)][2 * uint8(idx % 3)].field_0:
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = 0
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 + stor20[address(arg2)][2 * uint8(idx % 3)].field_256 >= stor20[address(arg2)][2 * uint8(idx % 3)].field_256
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_256 += stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                else:
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_0 = idx + 1
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = 0
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 >= 0
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_256 = stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                mem[96] = idx + 1
                                mem[128] = stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                emit 0xfe327a03: idx + 1, stor20[address(arg1)][2 * uint8(idx % 3)].field_256, arg1, arg2
                        s = idx + 1
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while idx < uint8(stor19):
                        require idx + 1 >= 1
                        require 1 <= idx + 1
                        require uint8(idx % 3) < 3
                        if idx + 1 == stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                            require uint8(idx % 3) < 3
                            require uint8(idx % 3) < 3
                            require uint8(idx % 3) < 3
                            if arg3 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256:
                                if idx + 1 == stor20[address(arg2)][2 * uint8(idx % 3)].field_0:
                                    require arg3 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 -= arg3
                                    require arg3 + stor20[address(arg2)][2 * uint8(idx % 3)].field_256 >= stor20[address(arg2)][2 * uint8(idx % 3)].field_256
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_256 += arg3
                                else:
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_0 = idx + 1
                                    require arg3 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 -= arg3
                                    require arg3 >= 0
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_256 = arg3
                                mem[96] = idx + 1
                                mem[128] = arg3
                                emit 0xfe327a03: idx + 1, arg3, arg1, arg2
                            else:
                                if idx + 1 == stor20[address(arg2)][2 * uint8(idx % 3)].field_0:
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = 0
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 + stor20[address(arg2)][2 * uint8(idx % 3)].field_256 >= stor20[address(arg2)][2 * uint8(idx % 3)].field_256
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_256 += stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                else:
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_0 = idx + 1
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = 0
                                    require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 >= 0
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx % 3)].field_256 = stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                mem[96] = idx + 1
                                mem[128] = stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                emit 0xfe327a03: idx + 1, stor20[address(arg1)][2 * uint8(idx % 3)].field_256, arg1, arg2
                        s = idx + 1
                        idx = idx + 1
                        continue 
        else:
            require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
            require 3 <= uint256(sub_f88ab36c) + 1
            if uint256(sub_f88ab36c) != 0:
                if 3 <= uint256(sub_f88ab36c):
                    s = 0
                    s = 0
                    idx = 0
                    while idx < 3:
                        require idx >= 0
                        require 1 <= idx + uint256(sub_f88ab36c) - 2
                        require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                        if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            if arg3 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256:
                                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    require arg3 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 -= arg3
                                    require arg3 + stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 += arg3
                                else:
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                    require arg3 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 -= arg3
                                    require arg3 >= 0
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = arg3
                                mem[96] = idx + uint256(sub_f88ab36c) - 2
                                mem[128] = arg3
                                emit 0xfe327a03: idx + uint256(sub_f88ab36c) - 2, arg3, arg1, arg2
                            else:
                                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = 0
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 + stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 += stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                else:
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = 0
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= 0
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                mem[96] = idx + uint256(sub_f88ab36c) - 2
                                mem[128] = stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                emit 0xfe327a03: idx + uint256(sub_f88ab36c) - 2, stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256, arg1, arg2
                        s = idx + uint256(sub_f88ab36c) - 3 % 3
                        s = idx + uint256(sub_f88ab36c) - 2
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    s = 0
                    idx = 0
                    while idx < uint8(stor19):
                        require idx >= 0
                        require 1 <= idx + uint256(sub_f88ab36c) - 2
                        require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                        if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            if arg3 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256:
                                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    require arg3 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 -= arg3
                                    require arg3 + stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 += arg3
                                else:
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                    require arg3 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 -= arg3
                                    require arg3 >= 0
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = arg3
                                mem[96] = idx + uint256(sub_f88ab36c) - 2
                                mem[128] = arg3
                                emit 0xfe327a03: idx + uint256(sub_f88ab36c) - 2, arg3, arg1, arg2
                            else:
                                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = 0
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 + stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 += stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                else:
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = 0
                                    require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= 0
                                    mem[0] = arg2
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg2)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                mem[96] = idx + uint256(sub_f88ab36c) - 2
                                mem[128] = stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                emit 0xfe327a03: idx + uint256(sub_f88ab36c) - 2, stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256, arg1, arg2
                        s = idx + uint256(sub_f88ab36c) - 3 % 3
                        s = idx + uint256(sub_f88ab36c) - 2
                        idx = idx + 1
                        continue 
    return 1
}

function sub_6df20281(?) {
    mem[64] = 192
    mem[96 len 96] = code.data[10100 len 96]
    require sub_f4dc8c0dAddress
    require msg.sender == sub_f4dc8c0dAddress
    require arg1
    require arg1 != this.address
    require crowdsaleAddress != arg1
    mem[0] = arg1
    require sub_1fb562bf[address(arg1)] > 0
    require uint256(sub_f88ab36c) != 0
    if 3 <= uint256(sub_f88ab36c):
        require uint256(sub_f88ab36c) != 0
        if 3 > uint256(sub_f88ab36c):
            idx = 0
            while idx < 3:
                require idx + 1 >= 1
                mem[0] = arg1
                mem[32] = 20
                require 1 <= idx + 1
                require uint8(idx % 3) < 3
                if stor20[address(arg1)][2 * uint8(idx % 3)].field_0 > idx + 1:
                    require idx < 3
                    mem[(32 * idx) + 96] = 0
                else:
                    if idx + 1 == stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                        if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                        else:
                            require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= 0:
                                require idx < 3
                                mem[(32 * idx) + 96] = 0
                            else:
                                require 1 <= idx + 1
                                mem[0] = arg1
                                mem[32] = 20
                                require uint8(idx % 3) < 3
                                stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = balanceOf[address(arg1)]
                                if idx + 1 != stor21[2 * uint8(idx % 3)]:
                                    stor21[2 * uint8(idx % 3)] = idx + 1
                                    stor22[2 * uint8(idx % 3)] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                else:
                                    require balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256 + stor22[2 * uint8(idx % 3)] >= stor22[2 * uint8(idx % 3)]
                                    stor22[2 * uint8(idx % 3)] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256 + stor22[2 * uint8(idx % 3)]
                                mem[mem[64]] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                mem[mem[64] + 32] = balanceOf[address(arg1)]
                                mem[mem[64] + 64] = stor22[2 * uint8(idx % 3)]
                                emit 0x2e91e378: balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256, balanceOf[address(arg1)], stor22[2 * uint8(idx % 3)], arg1, idx + 1
                                require idx < 3
                                mem[(32 * idx) + 96] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                    else:
                        if balanceOf[address(arg1)] <= 0:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                        else:
                            require 0 <= balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] <= 0:
                                require idx < 3
                                mem[(32 * idx) + 96] = 0
                            else:
                                require 1 <= idx + 1
                                require uint8(idx % 3) < 3
                                stor20[address(arg1)][2 * uint8(idx % 3)].field_0 = idx + 1
                                mem[0] = arg1
                                mem[32] = 20
                                stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = balanceOf[address(arg1)]
                                if idx + 1 != stor21[2 * uint8(idx % 3)]:
                                    stor21[2 * uint8(idx % 3)] = idx + 1
                                    stor22[2 * uint8(idx % 3)] = balanceOf[address(arg1)]
                                else:
                                    require balanceOf[address(arg1)] + stor22[2 * uint8(idx % 3)] >= stor22[2 * uint8(idx % 3)]
                                    stor22[2 * uint8(idx % 3)] += balanceOf[address(arg1)]
                                mem[mem[64]] = balanceOf[address(arg1)]
                                mem[mem[64] + 32] = balanceOf[address(arg1)]
                                mem[mem[64] + 64] = stor22[2 * uint8(idx % 3)]
                                emit 0x2e91e378: balanceOf[address(arg1)], balanceOf[address(arg1)], stor22[2 * uint8(idx % 3)], arg1, idx + 1
                                require idx < 3
                                mem[(32 * idx) + 96] = balanceOf[address(arg1)]
                idx = idx + 1
                continue 
        else:
            require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
            require 3 <= uint256(sub_f88ab36c) + 1
            idx = 0
            while idx < 3:
                require idx >= 0
                mem[0] = arg1
                mem[32] = 20
                require 1 <= idx + uint256(sub_f88ab36c) - 2
                require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                if stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 > idx + uint256(sub_f88ab36c) - 2:
                    require idx < 3
                    mem[(32 * idx) + 96] = 0
                else:
                    if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                        if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                        else:
                            require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= 0:
                                require idx < 3
                                mem[(32 * idx) + 96] = 0
                            else:
                                require 1 <= idx + uint256(sub_f88ab36c) - 2
                                mem[0] = arg1
                                mem[32] = 20
                                require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = balanceOf[address(arg1)]
                                if idx + uint256(sub_f88ab36c) - 2 != stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)]:
                                    stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)] = idx + uint256(sub_f88ab36c) - 2
                                    stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                else:
                                    require balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 + stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] >= stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                                    stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 + stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                                mem[mem[64]] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                mem[mem[64] + 32] = balanceOf[address(arg1)]
                                mem[mem[64] + 64] = stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                                emit 0x2e91e378: balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256, balanceOf[address(arg1)], stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)], arg1, idx + uint256(sub_f88ab36c) - 2
                                require idx < 3
                                mem[(32 * idx) + 96] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                    else:
                        if balanceOf[address(arg1)] <= 0:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                        else:
                            require 0 <= balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] <= 0:
                                require idx < 3
                                mem[(32 * idx) + 96] = 0
                            else:
                                require 1 <= idx + uint256(sub_f88ab36c) - 2
                                require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                mem[0] = arg1
                                mem[32] = 20
                                stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = balanceOf[address(arg1)]
                                if idx + uint256(sub_f88ab36c) - 2 != stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)]:
                                    stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)] = idx + uint256(sub_f88ab36c) - 2
                                    stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] = balanceOf[address(arg1)]
                                else:
                                    require balanceOf[address(arg1)] + stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] >= stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                                    stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] += balanceOf[address(arg1)]
                                mem[mem[64]] = balanceOf[address(arg1)]
                                mem[mem[64] + 32] = balanceOf[address(arg1)]
                                mem[mem[64] + 64] = stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                                emit 0x2e91e378: balanceOf[address(arg1)], balanceOf[address(arg1)], stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)], arg1, idx + uint256(sub_f88ab36c) - 2
                                require idx < 3
                                mem[(32 * idx) + 96] = balanceOf[address(arg1)]
                idx = idx + 1
                continue 
        mem[mem[64]] = 3
        mem[mem[64] + 32 len 96] = mem[96 len 96]
        return 3, mem[mem[64] + 32 len 96]
    require uint8(stor19) > 0
    if 0 == uint256(sub_f88ab36c):
        require 0 >= uint8(stor19)
        return uint8(stor19), code.data[10100 len 96]
    if 3 > uint256(sub_f88ab36c):
        idx = 0
        while idx < uint8(stor19):
            require idx + 1 >= 1
            mem[0] = arg1
            mem[32] = 20
            require 1 <= idx + 1
            require uint8(idx % 3) < 3
            if stor20[address(arg1)][2 * uint8(idx % 3)].field_0 > idx + 1:
                require idx < 3
                mem[(32 * idx) + 96] = 0
            else:
                if idx + 1 == stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                    if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(idx % 3)].field_256:
                        require idx < 3
                        mem[(32 * idx) + 96] = 0
                    else:
                        require stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256 <= 0:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                        else:
                            require 1 <= idx + 1
                            mem[0] = arg1
                            mem[32] = 20
                            require uint8(idx % 3) < 3
                            stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = balanceOf[address(arg1)]
                            if idx + 1 != stor21[2 * uint8(idx % 3)]:
                                stor21[2 * uint8(idx % 3)] = idx + 1
                                stor22[2 * uint8(idx % 3)] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                            else:
                                require balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256 + stor22[2 * uint8(idx % 3)] >= stor22[2 * uint8(idx % 3)]
                                stor22[2 * uint8(idx % 3)] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256 + stor22[2 * uint8(idx % 3)]
                            mem[mem[64]] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                            mem[mem[64] + 32] = balanceOf[address(arg1)]
                            mem[mem[64] + 64] = stor22[2 * uint8(idx % 3)]
                            emit 0x2e91e378: balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256, balanceOf[address(arg1)], stor22[2 * uint8(idx % 3)], arg1, idx + 1
                            require idx < 3
                            mem[(32 * idx) + 96] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                else:
                    if balanceOf[address(arg1)] <= 0:
                        require idx < 3
                        mem[(32 * idx) + 96] = 0
                    else:
                        require 0 <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] <= 0:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                        else:
                            require 1 <= idx + 1
                            require uint8(idx % 3) < 3
                            stor20[address(arg1)][2 * uint8(idx % 3)].field_0 = idx + 1
                            mem[0] = arg1
                            mem[32] = 20
                            stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = balanceOf[address(arg1)]
                            if idx + 1 != stor21[2 * uint8(idx % 3)]:
                                stor21[2 * uint8(idx % 3)] = idx + 1
                                stor22[2 * uint8(idx % 3)] = balanceOf[address(arg1)]
                            else:
                                require balanceOf[address(arg1)] + stor22[2 * uint8(idx % 3)] >= stor22[2 * uint8(idx % 3)]
                                stor22[2 * uint8(idx % 3)] += balanceOf[address(arg1)]
                            mem[mem[64]] = balanceOf[address(arg1)]
                            mem[mem[64] + 32] = balanceOf[address(arg1)]
                            mem[mem[64] + 64] = stor22[2 * uint8(idx % 3)]
                            emit 0x2e91e378: balanceOf[address(arg1)], balanceOf[address(arg1)], stor22[2 * uint8(idx % 3)], arg1, idx + 1
                            require idx < 3
                            mem[(32 * idx) + 96] = balanceOf[address(arg1)]
            idx = idx + 1
            continue 
    else:
        require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
        require 3 <= uint256(sub_f88ab36c) + 1
        idx = 0
        while idx < uint8(stor19):
            require idx >= 0
            mem[0] = arg1
            mem[32] = 20
            require 1 <= idx + uint256(sub_f88ab36c) - 2
            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
            if stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 > idx + uint256(sub_f88ab36c) - 2:
                require idx < 3
                mem[(32 * idx) + 96] = 0
            else:
                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                    if balanceOf[address(arg1)] <= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256:
                        require idx < 3
                        mem[(32 * idx) + 96] = 0
                    else:
                        require stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= 0:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                        else:
                            require 1 <= idx + uint256(sub_f88ab36c) - 2
                            mem[0] = arg1
                            mem[32] = 20
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = balanceOf[address(arg1)]
                            if idx + uint256(sub_f88ab36c) - 2 != stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)]:
                                stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)] = idx + uint256(sub_f88ab36c) - 2
                                stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                            else:
                                require balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 + stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] >= stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                                stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 + stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                            mem[mem[64]] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                            mem[mem[64] + 32] = balanceOf[address(arg1)]
                            mem[mem[64] + 64] = stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                            emit 0x2e91e378: balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256, balanceOf[address(arg1)], stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)], arg1, idx + uint256(sub_f88ab36c) - 2
                            require idx < 3
                            mem[(32 * idx) + 96] = balanceOf[address(arg1)] - stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                else:
                    if balanceOf[address(arg1)] <= 0:
                        require idx < 3
                        mem[(32 * idx) + 96] = 0
                    else:
                        require 0 <= balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] <= 0:
                            require idx < 3
                            mem[(32 * idx) + 96] = 0
                        else:
                            require 1 <= idx + uint256(sub_f88ab36c) - 2
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                            mem[0] = arg1
                            mem[32] = 20
                            stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = balanceOf[address(arg1)]
                            if idx + uint256(sub_f88ab36c) - 2 != stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)]:
                                stor21[2 * uint8(idx + uint256(stor19) - 3 % 3)] = idx + uint256(sub_f88ab36c) - 2
                                stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] = balanceOf[address(arg1)]
                            else:
                                require balanceOf[address(arg1)] + stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] >= stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                                stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)] += balanceOf[address(arg1)]
                            mem[mem[64]] = balanceOf[address(arg1)]
                            mem[mem[64] + 32] = balanceOf[address(arg1)]
                            mem[mem[64] + 64] = stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)]
                            emit 0x2e91e378: balanceOf[address(arg1)], balanceOf[address(arg1)], stor22[2 * uint8(idx + uint256(stor19) - 3 % 3)], arg1, idx + uint256(sub_f88ab36c) - 2
                            require idx < 3
                            mem[(32 * idx) + 96] = balanceOf[address(arg1)]
            idx = idx + 1
            continue 
    mem[mem[64]] = uint8(stor19)
    mem[mem[64] + 32 len 96] = mem[96 len 96]
    return uint8(stor19), mem[mem[64] + 32 len 96]
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor14.field_8):
        require stor7[msg.sender]
    require arg1
    require arg1 != this.address
    require crowdsaleAddress != arg1
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if uint256(sub_f88ab36c) != 0:
        if 3 > uint256(sub_f88ab36c):
            if uint256(sub_f88ab36c) != 0:
                if 3 <= uint256(sub_f88ab36c):
                    s = 0
                    idx = 0
                    while idx < 3:
                        require idx + 1 >= 1
                        require 1 <= idx + 1
                        require uint8(idx % 3) < 3
                        if idx + 1 == stor20[address(msg.sender)][2 * uint8(idx % 3)].field_0:
                            require uint8(idx % 3) < 3
                            require uint8(idx % 3) < 3
                            require uint8(idx % 3) < 3
                            if arg2 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256:
                                if idx + 1 == stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                                    require arg2 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 -= arg2
                                    require arg2 + stor20[address(arg1)][2 * uint8(idx % 3)].field_256 >= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 += arg2
                                else:
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_0 = idx + 1
                                    require arg2 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 -= arg2
                                    require arg2 >= 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = arg2
                                mem[96] = idx + 1
                                mem[128] = arg2
                                emit 0xfe327a03: idx + 1, arg2, msg.sender, arg1
                            else:
                                if idx + 1 == stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                                    require stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 = 0
                                    require stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 + stor20[address(arg1)][2 * uint8(idx % 3)].field_256 >= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 += stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                else:
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_0 = idx + 1
                                    require stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 = 0
                                    require stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 >= 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                mem[96] = idx + 1
                                mem[128] = stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                emit 0xfe327a03: idx + 1, stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256, msg.sender, arg1
                        s = idx + 1
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while idx < uint8(stor19):
                        require idx + 1 >= 1
                        require 1 <= idx + 1
                        require uint8(idx % 3) < 3
                        if idx + 1 == stor20[address(msg.sender)][2 * uint8(idx % 3)].field_0:
                            require uint8(idx % 3) < 3
                            require uint8(idx % 3) < 3
                            require uint8(idx % 3) < 3
                            if arg2 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256:
                                if idx + 1 == stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                                    require arg2 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 -= arg2
                                    require arg2 + stor20[address(arg1)][2 * uint8(idx % 3)].field_256 >= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 += arg2
                                else:
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_0 = idx + 1
                                    require arg2 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 -= arg2
                                    require arg2 >= 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = arg2
                                mem[96] = idx + 1
                                mem[128] = arg2
                                emit 0xfe327a03: idx + 1, arg2, msg.sender, arg1
                            else:
                                if idx + 1 == stor20[address(arg1)][2 * uint8(idx % 3)].field_0:
                                    require stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 = 0
                                    require stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 + stor20[address(arg1)][2 * uint8(idx % 3)].field_256 >= stor20[address(arg1)][2 * uint8(idx % 3)].field_256
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 += stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                else:
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_0 = idx + 1
                                    require stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 <= stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                    require uint8(idx % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 = 0
                                    require stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256 >= 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx % 3)].field_256 = stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                mem[96] = idx + 1
                                mem[128] = stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256
                                emit 0xfe327a03: idx + 1, stor20[address(msg.sender)][2 * uint8(idx % 3)].field_256, msg.sender, arg1
                        s = idx + 1
                        idx = idx + 1
                        continue 
        else:
            require uint256(sub_f88ab36c) + 1 >= uint256(sub_f88ab36c)
            require 3 <= uint256(sub_f88ab36c) + 1
            if uint256(sub_f88ab36c) != 0:
                if 3 <= uint256(sub_f88ab36c):
                    s = 0
                    s = 0
                    idx = 0
                    while idx < 3:
                        require idx >= 0
                        require 1 <= idx + uint256(sub_f88ab36c) - 2
                        require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                        if idx + uint256(sub_f88ab36c) - 2 == stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            if arg2 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256:
                                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    require arg2 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 -= arg2
                                    require arg2 + stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 += arg2
                                else:
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                    require arg2 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 -= arg2
                                    require arg2 >= 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = arg2
                                mem[96] = idx + uint256(sub_f88ab36c) - 2
                                mem[128] = arg2
                                emit 0xfe327a03: idx + uint256(sub_f88ab36c) - 2, arg2, msg.sender, arg1
                            else:
                                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    require stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = 0
                                    require stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 + stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 += stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                else:
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                    require stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = 0
                                    require stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                mem[96] = idx + uint256(sub_f88ab36c) - 2
                                mem[128] = stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                emit 0xfe327a03: idx + uint256(sub_f88ab36c) - 2, stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256, msg.sender, arg1
                        s = idx + uint256(sub_f88ab36c) - 3 % 3
                        s = idx + uint256(sub_f88ab36c) - 2
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    s = 0
                    idx = 0
                    while idx < uint8(stor19):
                        require idx >= 0
                        require 1 <= idx + uint256(sub_f88ab36c) - 2
                        require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                        if idx + uint256(sub_f88ab36c) - 2 == stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                            if arg2 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256:
                                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    require arg2 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 -= arg2
                                    require arg2 + stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 += arg2
                                else:
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                    require arg2 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 -= arg2
                                    require arg2 >= 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = arg2
                                mem[96] = idx + uint256(sub_f88ab36c) - 2
                                mem[128] = arg2
                                emit 0xfe327a03: idx + uint256(sub_f88ab36c) - 2, arg2, msg.sender, arg1
                            else:
                                if idx + uint256(sub_f88ab36c) - 2 == stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0:
                                    require stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = 0
                                    require stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 + stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 += stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                else:
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_0 = idx + uint256(sub_f88ab36c) - 2
                                    require stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 <= stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = 0
                                    require stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 >= 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    require uint8(idx + uint256(sub_f88ab36c) - 3 % 3) < 3
                                    stor20[address(arg1)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256 = stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                mem[96] = idx + uint256(sub_f88ab36c) - 2
                                mem[128] = stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256
                                emit 0xfe327a03: idx + uint256(sub_f88ab36c) - 2, stor20[address(msg.sender)][2 * uint8(idx + uint256(stor19) - 3 % 3)].field_256, msg.sender, arg1
                        s = idx + uint256(sub_f88ab36c) - 3 % 3
                        s = idx + uint256(sub_f88ab36c) - 2
                        idx = idx + 1
                        continue 
    return 1
}



}
