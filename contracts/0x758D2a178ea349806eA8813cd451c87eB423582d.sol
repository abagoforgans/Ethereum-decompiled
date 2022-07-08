contract main {




// =====================  Runtime code  =====================


const sub_73c209aa(?) = 5

const sub_d1676089(?) = 10000

const sub_d5375bb0(?) = 30

const sub_e28897a1(?) = 18

const sub_f3bc843e(?) = 'governance'

const BASE_MULTIPLIER = 10^18


address resolverAddress;
array of uint256 sub_374382e3;
uint256 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor14;
array of struct sub_26d94911;
address loanTokenAddress;
address debtTokenAddress;
address equityTokenAddress;
address sub_c0924b80Address;
address tokenManagerAddress;
address registryAddress;
address sub_9ff78c30Address;
address sub_85d1ed51Address;
address sub_47225692Address;
array of address collateralTokens;
array of struct loans;
array of uint256 sub_24f34c0c;
array of uint256 sub_a35b0488;
mapping of uint8 stor99;

function resolver() {
    return resolverAddress
}

function loanToken() {
    return loanTokenAddress
}

function collateralTokens(uint256 arg1) {
    require arg1 < collateralTokens.length
    return collateralTokens[arg1]
}

function sub_24f34c0c(?) {
    require arg2 < sub_24f34c0c[arg1]
    return sub_24f34c0c[arg1][arg2]
}

function sub_26d94911(?) {
    require arg2 < uint256(sub_26d94911[arg1].field_0)
    return uint256(sub_26d94911[arg1][arg2].field_0)
}

function tokenManager() {
    return tokenManagerAddress
}

function sub_374382e3(?) {
    require arg1 < 14
    return sub_374382e3[arg1]
}

function sub_47225692(?) {
    return sub_47225692Address
}

function registry() {
    return registryAddress
}

function sub_85d1ed51(?) {
    return sub_85d1ed51Address
}

function sub_9ff78c30(?) {
    return sub_9ff78c30Address
}

function sub_a35b0488(?) {
    require arg2 < sub_a35b0488[arg1]
    return sub_a35b0488[arg1][arg2]
}

function sub_c0924b80(?) {
    return sub_c0924b80Address
}

function equityToken() {
    return equityTokenAddress
}

function loans(uint256 arg1) {
    require arg1 < loans.length
    return uint256(loans[arg1].field_0), 
           uint256(loans[arg1].field_256),
           uint256(loans[arg1].field_512),
           uint256(loans[arg1].field_768),
           address(loans[arg1].field_1024),
           address(loans[arg1].field_1280),
           uint256(loans[arg1].field_1536)
}

function debtToken() {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_a2598dce(?) {
    require arg1 < loans.length
    if uint256(loans[arg1].field_0) != 0:
        require arg1 < loans.length
        require uint256(loans[arg1].field_1536) <= block.timestamp
        if block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 >= 1:
            require arg1 < loans.length
            mem[0] = 27
            require uint256(loans[arg1].field_256)
            require var44005 < 18
            mem[64] = 288
            mem[96 len 192] = code.data[9411 len 192]
            if var44005:
                if var44005 != 1:
                    mem[64] = 480
                    mem[288] = (10000 / uint256(loans[arg1].field_256))^var44005
                    mem[320] = 365^var44005
                    s = 1
                    while s <= var44005:
                        require s == s
                        s = s + 1
                        continue 
                    mem[352] = 1
                    if (10000 / uint256(loans[arg1].field_256))^var44005:
                        require (10000 / uint256(loans[arg1].field_256))^var44005 / (10000 / uint256(loans[arg1].field_256))^var44005 == 1
                        if (10000 / uint256(loans[arg1].field_256))^var44005:
                            require 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005 / (10000 / uint256(loans[arg1].field_256))^var44005 == 365^var44005
                            mem[384] = 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                            require 1 <= var44005
                            if not bool(var44005 - 1):
                                mem[416] = 1
                                mem[448] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                s = 2
                                while s <= var44005:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                        if mem[448]:
                                            require (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]) / mem[448] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                            mem[448] = (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[448] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                        if mem[448]:
                                            require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448] / mem[448] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                            mem[448] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[448] = 0
                                            s = s + 1
                                            continue 
                                if uint256(loans[arg1].field_0):
                                    require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                                    require 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                                    require mem[448] * uint256(loans[arg1].field_0) / 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005 >= 0
                                    var44002 = 1
                                    var44003 = 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                                    var44004 = mem[448]
                                    var44005 = var44005 + 1
                                    continue 
                                else:
                                    require 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                                    require 0 / 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005 >= 0
                                    var44002 = 1
                                    var44003 = 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                                    var44004 = mem[448]
                                    var44005 = var44005 + 1
                                    continue 
                            else:
                                mem[416] = 0
                                mem[448] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                s = 2
                                while s <= var44005:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                        if mem[448]:
                                            require (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]) / mem[448] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                            mem[448] = (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[448] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                        if mem[448]:
                                            require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448] / mem[448] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                            mem[448] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[448] = 0
                                            s = s + 1
                                            continue 
                                if uint256(loans[arg1].field_0):
                                    require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                                    require 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                                    require mem[448] * uint256(loans[arg1].field_0) / 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005 <= 0
                                    var44002 = 0
                                    var44003 = 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                                    var44004 = mem[448]
                                    var44005 = var44005 + 1
                                    continue 
                                else:
                                    require 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                                    require 0 / 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005 <= 0
                                    var44002 = 0
                                    var44003 = 365^var44005 * (10000 / uint256(loans[arg1].field_256))^var44005
                                    var44004 = mem[448]
                                    var44005 = var44005 + 1
                                    continue 
                        else:
                            require 1 <= var44005
                            if not bool(var44005 - 1):
                                mem[448] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                s = 2
                                while s <= var44005:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                        if mem[448]:
                                            require (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]) / mem[448] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                            mem[448] = (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[448] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                        if mem[448]:
                                            require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448] / mem[448] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                            mem[448] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[448] = 0
                                            s = s + 1
                                            continue 
                                require uint256(loans[arg1].field_0)
                                require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                                revert
                            else:
                                mem[448] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                s = 2
                                while s <= var44005:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                        if mem[448]:
                                            require (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]) / mem[448] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                            mem[448] = (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[448] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                        if mem[448]:
                                            require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448] / mem[448] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                            mem[448] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[448] = 0
                                            s = s + 1
                                            continue 
                                require uint256(loans[arg1].field_0)
                                require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                                revert
                    else:
                        require 1 <= var44005
                        if not bool(var44005 - 1):
                            mem[448] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            s = 2
                            while s <= var44005:
                                require 1 <= s
                                if s - 1:
                                    require (365 * s) - 365 / s - 1 == 365
                                    require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                    if mem[448]:
                                        require (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]) / mem[448] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                        mem[448] = (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[448] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                    if mem[448]:
                                        require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448] / mem[448] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                        mem[448] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[448] = 0
                                        s = s + 1
                                        continue 
                            require uint256(loans[arg1].field_0)
                            require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                            revert
                        else:
                            mem[448] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            s = 2
                            while s <= var44005:
                                require 1 <= s
                                if s - 1:
                                    require (365 * s) - 365 / s - 1 == 365
                                    require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                    if mem[448]:
                                        require (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]) / mem[448] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                        mem[448] = (-365 * mem[448]) + (365 * s * mem[448]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[448] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                    if mem[448]:
                                        require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448] / mem[448] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                        mem[448] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[448]
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[448] = 0
                                        s = s + 1
                                        continue 
                            require uint256(loans[arg1].field_0)
                            require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                            revert
                else:
                    if 10000 / uint256(loans[arg1].field_256):
                        require 365 * 10000 / uint256(loans[arg1].field_256) / 10000 / uint256(loans[arg1].field_256) == 365
                        if uint256(loans[arg1].field_0):
                            require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            require 365 * 10000 / uint256(loans[arg1].field_256)
                            require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * uint256(loans[arg1].field_0) / 365 * 10000 / uint256(loans[arg1].field_256) >= 0
                            var44002 = 1
                            var44003 = 365 * 10000 / uint256(loans[arg1].field_256)
                            var44004 = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            var44005 = var44005 + 1
                            continue 
                        else:
                            require 365 * 10000 / uint256(loans[arg1].field_256)
                            require 0 / 365 * 10000 / uint256(loans[arg1].field_256) >= 0
                            var44002 = 1
                            var44003 = 365 * 10000 / uint256(loans[arg1].field_256)
                            var44004 = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            var44005 = var44005 + 1
                            continue 
                    else:
                        require uint256(loans[arg1].field_0)
                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                        revert
            else:
                if uint256(loans[arg1].field_0):
                    require uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == 1
                    require uint256(loans[arg1].field_0) >= 0
                    var44002 = 1
                    var44003 = 1
                    var44004 = 1
                    var44005 = var44005 + 1
                    continue 
                else:
                    var44002 = 1
                    var44003 = 1
                    var44004 = 1
                    var44005 = var44005 + 1
                    continue 
        else:
            require arg1 < loans.length
            mem[0] = 27
            require uint256(loans[arg1].field_256)
            require var46005 < 18
            mem[64] = 288
            mem[96 len 192] = code.data[9411 len 192]
            if var46005:
                if var46005 != 1:
                    mem[64] = 480
                    mem[288] = (10000 / uint256(loans[arg1].field_256))^var46005
                    mem[320] = 365^var46005
                    s = 1
                    while s <= var46005:
                        require s == s
                        s = s + 1
                        continue 
                    mem[352] = 1
                    if (10000 / uint256(loans[arg1].field_256))^var46005:
                        require (10000 / uint256(loans[arg1].field_256))^var46005 / (10000 / uint256(loans[arg1].field_256))^var46005 == 1
                        if (10000 / uint256(loans[arg1].field_256))^var46005:
                            require 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005 / (10000 / uint256(loans[arg1].field_256))^var46005 == 365^var46005
                            mem[384] = 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                            require 1 <= var46005
                            if not bool(var46005 - 1):
                                mem[416] = 1
                                mem[448] = 1
                                s = 2
                                while s <= var46005:
                                    require 1 <= s
                                    require s - 1
                                    require (365 * s) - 365 / s - 1 == 365
                                    require 1 <= (365 * s) - 365
                                    if mem[448]:
                                        require (-366 * mem[448]) + (365 * s * mem[448]) / mem[448] == (365 * s) - 366
                                        mem[448] = (-366 * mem[448]) + (365 * s * mem[448])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[448] = 0
                                        s = s + 1
                                        continue 
                                if uint256(loans[arg1].field_0):
                                    require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                                    require 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                                    require mem[448] * uint256(loans[arg1].field_0) / 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005 >= 0
                                    var46002 = 1
                                    var46003 = 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                                    var46004 = mem[448]
                                    var46005 = var46005 + 1
                                    continue 
                                else:
                                    require 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                                    require 0 / 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005 >= 0
                                    var46002 = 1
                                    var46003 = 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                                    var46004 = mem[448]
                                    var46005 = var46005 + 1
                                    continue 
                            else:
                                mem[416] = 0
                                mem[448] = 1
                                s = 2
                                while s <= var46005:
                                    require 1 <= s
                                    require s - 1
                                    require (365 * s) - 365 / s - 1 == 365
                                    require 1 <= (365 * s) - 365
                                    if mem[448]:
                                        require (-366 * mem[448]) + (365 * s * mem[448]) / mem[448] == (365 * s) - 366
                                        mem[448] = (-366 * mem[448]) + (365 * s * mem[448])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[448] = 0
                                        s = s + 1
                                        continue 
                                if uint256(loans[arg1].field_0):
                                    require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                                    require 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                                    require mem[448] * uint256(loans[arg1].field_0) / 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005 <= 0
                                    var46002 = 0
                                    var46003 = 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                                    var46004 = mem[448]
                                    var46005 = var46005 + 1
                                    continue 
                                else:
                                    require 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                                    require 0 / 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005 <= 0
                                    var46002 = 0
                                    var46003 = 365^var46005 * (10000 / uint256(loans[arg1].field_256))^var46005
                                    var46004 = mem[448]
                                    var46005 = var46005 + 1
                                    continue 
                        else:
                            require 1 <= var46005
                            if not bool(var46005 - 1):
                                mem[448] = 1
                                s = 2
                                while s <= var46005:
                                    require 1 <= s
                                    require s - 1
                                    require (365 * s) - 365 / s - 1 == 365
                                    require 1 <= (365 * s) - 365
                                    if mem[448]:
                                        require (-366 * mem[448]) + (365 * s * mem[448]) / mem[448] == (365 * s) - 366
                                        mem[448] = (-366 * mem[448]) + (365 * s * mem[448])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[448] = 0
                                        s = s + 1
                                        continue 
                                require uint256(loans[arg1].field_0)
                                require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                                revert
                            else:
                                mem[448] = 1
                                s = 2
                                while s <= var46005:
                                    require 1 <= s
                                    require s - 1
                                    require (365 * s) - 365 / s - 1 == 365
                                    require 1 <= (365 * s) - 365
                                    if mem[448]:
                                        require (-366 * mem[448]) + (365 * s * mem[448]) / mem[448] == (365 * s) - 366
                                        mem[448] = (-366 * mem[448]) + (365 * s * mem[448])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[448] = 0
                                        s = s + 1
                                        continue 
                                require uint256(loans[arg1].field_0)
                                require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                                revert
                    else:
                        require 1 <= var46005
                        if not bool(var46005 - 1):
                            mem[448] = 1
                            s = 2
                            while s <= var46005:
                                require 1 <= s
                                require s - 1
                                require (365 * s) - 365 / s - 1 == 365
                                require 1 <= (365 * s) - 365
                                if mem[448]:
                                    require (-366 * mem[448]) + (365 * s * mem[448]) / mem[448] == (365 * s) - 366
                                    mem[448] = (-366 * mem[448]) + (365 * s * mem[448])
                                    s = s + 1
                                    continue 
                                else:
                                    mem[448] = 0
                                    s = s + 1
                                    continue 
                            require uint256(loans[arg1].field_0)
                            require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                            revert
                        else:
                            mem[448] = 1
                            s = 2
                            while s <= var46005:
                                require 1 <= s
                                require s - 1
                                require (365 * s) - 365 / s - 1 == 365
                                require 1 <= (365 * s) - 365
                                if mem[448]:
                                    require (-366 * mem[448]) + (365 * s * mem[448]) / mem[448] == (365 * s) - 366
                                    mem[448] = (-366 * mem[448]) + (365 * s * mem[448])
                                    s = s + 1
                                    continue 
                                else:
                                    mem[448] = 0
                                    s = s + 1
                                    continue 
                            require uint256(loans[arg1].field_0)
                            require mem[448] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[448]
                            revert
                else:
                    if 10000 / uint256(loans[arg1].field_256):
                        require 365 * 10000 / uint256(loans[arg1].field_256) / 10000 / uint256(loans[arg1].field_256) == 365
                        if uint256(loans[arg1].field_0):
                            require uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == 1
                            require 365 * 10000 / uint256(loans[arg1].field_256)
                            require uint256(loans[arg1].field_0) / 365 * 10000 / uint256(loans[arg1].field_256) >= 0
                            var46002 = 1
                            var46003 = 365 * 10000 / uint256(loans[arg1].field_256)
                            var46004 = 1
                            var46005 = var46005 + 1
                            continue 
                        else:
                            require 365 * 10000 / uint256(loans[arg1].field_256)
                            require 0 / 365 * 10000 / uint256(loans[arg1].field_256) >= 0
                            var46002 = 1
                            var46003 = 365 * 10000 / uint256(loans[arg1].field_256)
                            var46004 = 1
                            var46005 = var46005 + 1
                            continue 
                    else:
                        require uint256(loans[arg1].field_0)
                        require uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == 1
                        revert
            else:
                if uint256(loans[arg1].field_0):
                    require uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == 1
                    require uint256(loans[arg1].field_0) >= 0
                    var46002 = 1
                    var46003 = 1
                    var46004 = 1
                    var46005 = var46005 + 1
                    continue 
                else:
                    var46002 = 1
                    var46003 = 1
                    var46004 = 1
                    var46005 = var46005 + 1
                    continue 
    else:
        return 0
}

function getRepayAmount(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require arg1 < loans.length
    require uint256(loans[arg1].field_1536) <= block.timestamp
    require arg1 < loans.length
    mem[0] = 27
    require uint256(loans[arg1].field_256)
    if block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 >= 1:
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < 18:
            _9 = mem[64]
            mem[64] = mem[64] + 192
            mem[_9 len 192] = code.data[9411 len 192]
            if idx:
                if idx != 1:
                    _13 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_13] = (10000 / uint256(loans[arg1].field_256))^idx
                    mem[_13 + 32] = 365^idx
                    s = 1
                    while s <= idx:
                        require s == s
                        s = s + 1
                        continue 
                    mem[_13 + 64] = 1
                    if (10000 / uint256(loans[arg1].field_256))^idx:
                        require (10000 / uint256(loans[arg1].field_256))^idx / (10000 / uint256(loans[arg1].field_256))^idx == 1
                        if (10000 / uint256(loans[arg1].field_256))^idx:
                            require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx / (10000 / uint256(loans[arg1].field_256))^idx == 365^idx
                            mem[_13 + 96] = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_13 + 128] = 1
                                mem[_13 + 160] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                        if mem[_13 + 160]:
                                            require (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]) / mem[_13 + 160] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                            mem[_13 + 160] = (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_13 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                        if mem[_13 + 160]:
                                            require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160] / mem[_13 + 160] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                            mem[_13 + 160] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_13 + 160] = 0
                                            s = s + 1
                                            continue 
                                if uint256(loans[arg1].field_0):
                                    require mem[_13 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_13 + 160]
                                    require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    require mem[_13 + 160] * uint256(loans[arg1].field_0) / 365^idx * (10000 / uint256(loans[arg1].field_256))^idx >= 0
                                    s = 1
                                    s = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    s = mem[_13 + 160]
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    require 0 / 365^idx * (10000 / uint256(loans[arg1].field_256))^idx >= 0
                                    s = 1
                                    s = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    s = mem[_13 + 160]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_13 + 128] = 0
                                mem[_13 + 160] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                        if mem[_13 + 160]:
                                            require (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]) / mem[_13 + 160] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                            mem[_13 + 160] = (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_13 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                        if mem[_13 + 160]:
                                            require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160] / mem[_13 + 160] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                            mem[_13 + 160] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_13 + 160] = 0
                                            s = s + 1
                                            continue 
                                if uint256(loans[arg1].field_0):
                                    require mem[_13 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_13 + 160]
                                    require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    require mem[_13 + 160] * uint256(loans[arg1].field_0) / 365^idx * (10000 / uint256(loans[arg1].field_256))^idx <= 0
                                    s = 0
                                    s = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    s = mem[_13 + 160]
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    require 0 / 365^idx * (10000 / uint256(loans[arg1].field_256))^idx <= 0
                                    s = 0
                                    s = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    s = mem[_13 + 160]
                                    idx = idx + 1
                                    continue 
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_13 + 160] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                        if mem[_13 + 160]:
                                            require (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]) / mem[_13 + 160] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                            mem[_13 + 160] = (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_13 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                        if mem[_13 + 160]:
                                            require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160] / mem[_13 + 160] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                            mem[_13 + 160] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_13 + 160] = 0
                                            s = s + 1
                                            continue 
                                require uint256(loans[arg1].field_0)
                                require mem[_13 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_13 + 160]
                                revert
                            else:
                                mem[_13 + 160] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                        if mem[_13 + 160]:
                                            require (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]) / mem[_13 + 160] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                            mem[_13 + 160] = (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_13 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                        if mem[_13 + 160]:
                                            require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160] / mem[_13 + 160] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                            mem[_13 + 160] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_13 + 160] = 0
                                            s = s + 1
                                            continue 
                                require uint256(loans[arg1].field_0)
                                require mem[_13 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_13 + 160]
                                revert
                    else:
                        require 1 <= idx
                        if not bool(idx - 1):
                            mem[_13 + 160] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            s = 2
                            while s <= idx:
                                require 1 <= s
                                if s - 1:
                                    require (365 * s) - 365 / s - 1 == 365
                                    require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                    if mem[_13 + 160]:
                                        require (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]) / mem[_13 + 160] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                        mem[_13 + 160] = (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_13 + 160] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                    if mem[_13 + 160]:
                                        require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160] / mem[_13 + 160] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                        mem[_13 + 160] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_13 + 160] = 0
                                        s = s + 1
                                        continue 
                            require uint256(loans[arg1].field_0)
                            require mem[_13 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_13 + 160]
                            revert
                        else:
                            mem[_13 + 160] = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            s = 2
                            while s <= idx:
                                require 1 <= s
                                if s - 1:
                                    require (365 * s) - 365 / s - 1 == 365
                                    require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= (365 * s) - 365
                                    if mem[_13 + 160]:
                                        require (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]) / mem[_13 + 160] == (365 * s) + -(block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600) - 365
                                        mem[_13 + 160] = (-365 * mem[_13 + 160]) + (365 * s * mem[_13 + 160]) - (block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_13 + 160] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 <= 0
                                    if mem[_13 + 160]:
                                        require -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160] / mem[_13 + 160] == -block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                                        mem[_13 + 160] = -1 * block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * mem[_13 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_13 + 160] = 0
                                        s = s + 1
                                        continue 
                            require uint256(loans[arg1].field_0)
                            require mem[_13 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_13 + 160]
                            revert
                else:
                    if 10000 / uint256(loans[arg1].field_256):
                        require 365 * 10000 / uint256(loans[arg1].field_256) / 10000 / uint256(loans[arg1].field_256) == 365
                        if uint256(loans[arg1].field_0):
                            require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            require 365 * 10000 / uint256(loans[arg1].field_256)
                            require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * uint256(loans[arg1].field_0) / 365 * 10000 / uint256(loans[arg1].field_256) >= 0
                            s = 1
                            s = 365 * 10000 / uint256(loans[arg1].field_256)
                            s = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            idx = idx + 1
                            continue 
                        else:
                            require 365 * 10000 / uint256(loans[arg1].field_256)
                            require 0 / 365 * 10000 / uint256(loans[arg1].field_256) >= 0
                            s = 1
                            s = 365 * 10000 / uint256(loans[arg1].field_256)
                            s = block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                            idx = idx + 1
                            continue 
                    else:
                        require uint256(loans[arg1].field_0)
                        require block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600 * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == block.timestamp - uint256(loans[arg1].field_1536) / 24 * 3600
                        revert
            else:
                if uint256(loans[arg1].field_0):
                    require uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == 1
                    require uint256(loans[arg1].field_0) >= 0
                    s = 1
                    s = 1
                    s = 1
                    idx = idx + 1
                    continue 
                else:
                    s = 1
                    s = 1
                    s = 1
                    idx = idx + 1
                    continue 
    else:
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < 18:
            _12 = mem[64]
            mem[64] = mem[64] + 192
            mem[_12 len 192] = code.data[9411 len 192]
            if idx:
                if idx != 1:
                    _14 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_14] = (10000 / uint256(loans[arg1].field_256))^idx
                    mem[_14 + 32] = 365^idx
                    s = 1
                    while s <= idx:
                        require s == s
                        s = s + 1
                        continue 
                    mem[_14 + 64] = 1
                    if (10000 / uint256(loans[arg1].field_256))^idx:
                        require (10000 / uint256(loans[arg1].field_256))^idx / (10000 / uint256(loans[arg1].field_256))^idx == 1
                        if (10000 / uint256(loans[arg1].field_256))^idx:
                            require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx / (10000 / uint256(loans[arg1].field_256))^idx == 365^idx
                            mem[_14 + 96] = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_14 + 128] = 1
                                mem[_14 + 160] = 1
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    require s - 1
                                    require (365 * s) - 365 / s - 1 == 365
                                    require 1 <= (365 * s) - 365
                                    if mem[_14 + 160]:
                                        require (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160]) / mem[_14 + 160] == (365 * s) - 366
                                        mem[_14 + 160] = (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_14 + 160] = 0
                                        s = s + 1
                                        continue 
                                if uint256(loans[arg1].field_0):
                                    require mem[_14 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_14 + 160]
                                    require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    require mem[_14 + 160] * uint256(loans[arg1].field_0) / 365^idx * (10000 / uint256(loans[arg1].field_256))^idx >= 0
                                    s = 1
                                    s = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    s = mem[_14 + 160]
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    require 0 / 365^idx * (10000 / uint256(loans[arg1].field_256))^idx >= 0
                                    s = 1
                                    s = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    s = mem[_14 + 160]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_14 + 128] = 0
                                mem[_14 + 160] = 1
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    require s - 1
                                    require (365 * s) - 365 / s - 1 == 365
                                    require 1 <= (365 * s) - 365
                                    if mem[_14 + 160]:
                                        require (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160]) / mem[_14 + 160] == (365 * s) - 366
                                        mem[_14 + 160] = (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_14 + 160] = 0
                                        s = s + 1
                                        continue 
                                if uint256(loans[arg1].field_0):
                                    require mem[_14 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_14 + 160]
                                    require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    require mem[_14 + 160] * uint256(loans[arg1].field_0) / 365^idx * (10000 / uint256(loans[arg1].field_256))^idx <= 0
                                    s = 0
                                    s = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    s = mem[_14 + 160]
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    require 0 / 365^idx * (10000 / uint256(loans[arg1].field_256))^idx <= 0
                                    s = 0
                                    s = 365^idx * (10000 / uint256(loans[arg1].field_256))^idx
                                    s = mem[_14 + 160]
                                    idx = idx + 1
                                    continue 
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_14 + 160] = 1
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    require s - 1
                                    require (365 * s) - 365 / s - 1 == 365
                                    require 1 <= (365 * s) - 365
                                    if mem[_14 + 160]:
                                        require (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160]) / mem[_14 + 160] == (365 * s) - 366
                                        mem[_14 + 160] = (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_14 + 160] = 0
                                        s = s + 1
                                        continue 
                                require uint256(loans[arg1].field_0)
                                require mem[_14 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_14 + 160]
                                revert
                            else:
                                mem[_14 + 160] = 1
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    require s - 1
                                    require (365 * s) - 365 / s - 1 == 365
                                    require 1 <= (365 * s) - 365
                                    if mem[_14 + 160]:
                                        require (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160]) / mem[_14 + 160] == (365 * s) - 366
                                        mem[_14 + 160] = (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_14 + 160] = 0
                                        s = s + 1
                                        continue 
                                require uint256(loans[arg1].field_0)
                                require mem[_14 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_14 + 160]
                                revert
                    else:
                        require 1 <= idx
                        if not bool(idx - 1):
                            mem[_14 + 160] = 1
                            s = 2
                            while s <= idx:
                                require 1 <= s
                                require s - 1
                                require (365 * s) - 365 / s - 1 == 365
                                require 1 <= (365 * s) - 365
                                if mem[_14 + 160]:
                                    require (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160]) / mem[_14 + 160] == (365 * s) - 366
                                    mem[_14 + 160] = (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160])
                                    s = s + 1
                                    continue 
                                else:
                                    mem[_14 + 160] = 0
                                    s = s + 1
                                    continue 
                            require uint256(loans[arg1].field_0)
                            require mem[_14 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_14 + 160]
                            revert
                        else:
                            mem[_14 + 160] = 1
                            s = 2
                            while s <= idx:
                                require 1 <= s
                                require s - 1
                                require (365 * s) - 365 / s - 1 == 365
                                require 1 <= (365 * s) - 365
                                if mem[_14 + 160]:
                                    require (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160]) / mem[_14 + 160] == (365 * s) - 366
                                    mem[_14 + 160] = (-366 * mem[_14 + 160]) + (365 * s * mem[_14 + 160])
                                    s = s + 1
                                    continue 
                                else:
                                    mem[_14 + 160] = 0
                                    s = s + 1
                                    continue 
                            require uint256(loans[arg1].field_0)
                            require mem[_14 + 160] * uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == mem[_14 + 160]
                            revert
                else:
                    if 10000 / uint256(loans[arg1].field_256):
                        require 365 * 10000 / uint256(loans[arg1].field_256) / 10000 / uint256(loans[arg1].field_256) == 365
                        if uint256(loans[arg1].field_0):
                            require uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == 1
                            require 365 * 10000 / uint256(loans[arg1].field_256)
                            require uint256(loans[arg1].field_0) / 365 * 10000 / uint256(loans[arg1].field_256) >= 0
                            s = 1
                            s = 365 * 10000 / uint256(loans[arg1].field_256)
                            s = 1
                            idx = idx + 1
                            continue 
                        else:
                            require 365 * 10000 / uint256(loans[arg1].field_256)
                            require 0 / 365 * 10000 / uint256(loans[arg1].field_256) >= 0
                            s = 1
                            s = 365 * 10000 / uint256(loans[arg1].field_256)
                            s = 1
                            idx = idx + 1
                            continue 
                    else:
                        require uint256(loans[arg1].field_0)
                        require uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == 1
                        revert
            else:
                if uint256(loans[arg1].field_0):
                    require uint256(loans[arg1].field_0) / uint256(loans[arg1].field_0) == 1
                    require uint256(loans[arg1].field_0) >= 0
                    s = 1
                    s = 1
                    s = 1
                    idx = idx + 1
                    continue 
                else:
                    s = 1
                    s = 1
                    s = 1
                    idx = idx + 1
                    continue 
    return 0
}

function sub_e6e8c020(?) {
    mem[96 len 192] = code.data[9411 len 192]
    require arg3 < sub_24f34c0c[address(arg1)]
    require arg3 < sub_a35b0488[address(arg1)]
    mem[64] = 480
    require arg3 < sub_24f34c0c[address(arg1)]
    mem[288] = sub_24f34c0c[address(arg1)][arg3]
    mem[32] = 29
    require arg3 < sub_a35b0488[address(arg1)]
    mem[0] = sha3(address(arg1), 29)
    require sub_a35b0488[address(arg1)][arg3]
    mem[320] = 10000 / sub_a35b0488[address(arg1)][arg3]
    mem[384] = arg2
    require block.timestamp <= stor6
    mem[416] = stor6 - block.timestamp / 24 * 3600
    mem[448] = 18
    mem[484] = arg1
    mem[516] = loanTokenAddress
    mem[548] = arg2
    require ext_code.size(sub_c0924b80Address)
    call sub_c0924b80Address.0x6b441d8a with:
         gas gas_remaining wei
        args address(arg1), loanTokenAddress, arg2
    mem[480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[352] = ext_call.return_data[0]
    if not arg2:
        require sub_24f34c0c[address(arg1)][arg3]
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < 18:
            _66 = mem[64]
            mem[64] = mem[64] + 192
            mem[_66 len 192] = code.data[9411 len 192]
            if idx:
                if idx != 1:
                    _69 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_69] = (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                    mem[_69 + 32] = 365^idx
                    s = 1
                    while s <= idx:
                        require s == s
                        s = s + 1
                        continue 
                    mem[_69 + 64] = 1
                    if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                        require (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 1
                        if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                            require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 365^idx
                            mem[_69 + 96] = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_69 + 128] = 1
                                mem[_69 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_69 + 160]:
                                            require (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]) / mem[_69 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_69 + 160] = (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_69 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_69 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160] / mem[_69 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_69 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_69 + 160] = 0
                                            s = s + 1
                                            continue 
                                if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                    require mem[_69 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_69 + 160]
                                    require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    require mem[_69 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                    s = 1
                                    s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    s = mem[_69 + 160]
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                    s = 1
                                    s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    s = mem[_69 + 160]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_69 + 128] = 0
                                mem[_69 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_69 + 160]:
                                            require (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]) / mem[_69 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_69 + 160] = (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_69 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_69 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160] / mem[_69 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_69 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_69 + 160] = 0
                                            s = s + 1
                                            continue 
                                if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                    require mem[_69 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_69 + 160]
                                    require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    require mem[_69 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                    s = 0
                                    s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    s = mem[_69 + 160]
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                    s = 0
                                    s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    s = mem[_69 + 160]
                                    idx = idx + 1
                                    continue 
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_69 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_69 + 160]:
                                            require (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]) / mem[_69 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_69 + 160] = (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_69 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_69 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160] / mem[_69 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_69 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_69 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_69 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_69 + 160]
                                revert
                            else:
                                mem[_69 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_69 + 160]:
                                            require (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]) / mem[_69 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_69 + 160] = (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_69 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_69 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160] / mem[_69 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_69 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_69 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_69 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_69 + 160]
                                revert
                    else:
                        require 1 <= idx
                        if not bool(idx - 1):
                            mem[_69 + 160] = stor6 - block.timestamp / 24 * 3600
                            s = 2
                            while s <= idx:
                                require 1 <= s
                                if s - 1:
                                    require (365 * s) - 365 / s - 1 == 365
                                    require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                    if mem[_69 + 160]:
                                        require (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]) / mem[_69 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                        mem[_69 + 160] = (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_69 + 160] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor6 - block.timestamp / 24 * 3600 <= 0
                                    if mem[_69 + 160]:
                                        require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160] / mem[_69 + 160] == -stor6 - block.timestamp / 24 * 3600
                                        mem[_69 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_69 + 160] = 0
                                        s = s + 1
                                        continue 
                            require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                            require mem[_69 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_69 + 160]
                            revert
                        else:
                            mem[_69 + 160] = stor6 - block.timestamp / 24 * 3600
                            s = 2
                            while s <= idx:
                                require 1 <= s
                                if s - 1:
                                    require (365 * s) - 365 / s - 1 == 365
                                    require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                    if mem[_69 + 160]:
                                        require (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]) / mem[_69 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                        mem[_69 + 160] = (-365 * mem[_69 + 160]) + (365 * s * mem[_69 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_69 + 160] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor6 - block.timestamp / 24 * 3600 <= 0
                                    if mem[_69 + 160]:
                                        require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160] / mem[_69 + 160] == -stor6 - block.timestamp / 24 * 3600
                                        mem[_69 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_69 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_69 + 160] = 0
                                        s = s + 1
                                        continue 
                            require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                            require mem[_69 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_69 + 160]
                            revert
                else:
                    if 10000 / sub_a35b0488[address(arg1)][arg3]:
                        require 365 * 10000 / sub_a35b0488[address(arg1)][arg3] / 10000 / sub_a35b0488[address(arg1)][arg3] == 365
                        if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                            require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                            require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                            require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                            s = 1
                            s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                            s = stor6 - block.timestamp / 24 * 3600
                            idx = idx + 1
                            continue 
                        else:
                            require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                            require 0 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                            s = 1
                            s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                            s = stor6 - block.timestamp / 24 * 3600
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                        require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                        revert
            else:
                if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                    require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == 1
                    require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 >= 0
                    s = 1
                    s = 1
                    s = 1
                    idx = idx + 1
                    continue 
                else:
                    s = 1
                    s = 1
                    s = 1
                    idx = idx + 1
                    continue 
        if 0 <= 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
            revert with 0, 'value too small interest can not be applied'
    else:
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        if not ext_call.return_data[0] * arg2:
            require sub_24f34c0c[address(arg1)][arg3]
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < 18:
                _63 = mem[64]
                mem[64] = mem[64] + 192
                mem[_63 len 192] = code.data[9411 len 192]
                if idx:
                    if idx != 1:
                        _68 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_68] = (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                        mem[_68 + 32] = 365^idx
                        s = 1
                        while s <= idx:
                            require s == s
                            s = s + 1
                            continue 
                        mem[_68 + 64] = 1
                        if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                            require (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 1
                            if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                                require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 365^idx
                                mem[_68 + 96] = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_68 + 128] = 1
                                    mem[_68 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_68 + 160]:
                                                require (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]) / mem[_68 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_68 + 160] = (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_68 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_68 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160] / mem[_68 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_68 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_68 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                        require mem[_68 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_68 + 160]
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require mem[_68 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_68 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_68 + 160]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_68 + 128] = 0
                                    mem[_68 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_68 + 160]:
                                                require (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]) / mem[_68 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_68 + 160] = (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_68 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_68 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160] / mem[_68 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_68 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_68 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                        require mem[_68 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_68 + 160]
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require mem[_68 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_68 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_68 + 160]
                                        idx = idx + 1
                                        continue 
                            else:
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_68 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_68 + 160]:
                                                require (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]) / mem[_68 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_68 + 160] = (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_68 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_68 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160] / mem[_68 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_68 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_68 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                    require mem[_68 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_68 + 160]
                                    revert
                                else:
                                    mem[_68 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_68 + 160]:
                                                require (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]) / mem[_68 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_68 + 160] = (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_68 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_68 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160] / mem[_68 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_68 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_68 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                    require mem[_68 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_68 + 160]
                                    revert
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_68 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_68 + 160]:
                                            require (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]) / mem[_68 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_68 + 160] = (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_68 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_68 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160] / mem[_68 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_68 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_68 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_68 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_68 + 160]
                                revert
                            else:
                                mem[_68 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_68 + 160]:
                                            require (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]) / mem[_68 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_68 + 160] = (-365 * mem[_68 + 160]) + (365 * s * mem[_68 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_68 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_68 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160] / mem[_68 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_68 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_68 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_68 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_68 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_68 + 160]
                                revert
                    else:
                        if 10000 / sub_a35b0488[address(arg1)][arg3]:
                            require 365 * 10000 / sub_a35b0488[address(arg1)][arg3] / 10000 / sub_a35b0488[address(arg1)][arg3] == 365
                            if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                                require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                                s = 1
                                s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                            else:
                                require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                require 0 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                                s = 1
                                s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                        else:
                            require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                            require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                            revert
                else:
                    if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                        require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == 1
                        require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 >= 0
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
                    else:
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
            if 0 <= 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                revert with 0, 'value too small interest can not be applied'
        else:
            require 10000 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 == 10000
            require sub_24f34c0c[address(arg1)][arg3]
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < 18:
                _60 = mem[64]
                mem[64] = mem[64] + 192
                mem[_60 len 192] = code.data[9411 len 192]
                if idx:
                    if idx != 1:
                        _67 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_67] = (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                        mem[_67 + 32] = 365^idx
                        s = 1
                        while s <= idx:
                            require s == s
                            s = s + 1
                            continue 
                        mem[_67 + 64] = 1
                        if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                            require (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 1
                            if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                                require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 365^idx
                                mem[_67 + 96] = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_67 + 128] = 1
                                    mem[_67 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_67 + 160]:
                                                require (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]) / mem[_67 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_67 + 160] = (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_67 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_67 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160] / mem[_67 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_67 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_67 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                        require mem[_67 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_67 + 160]
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require mem[_67 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_67 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_67 + 160]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_67 + 128] = 0
                                    mem[_67 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_67 + 160]:
                                                require (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]) / mem[_67 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_67 + 160] = (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_67 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_67 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160] / mem[_67 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_67 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_67 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                        require mem[_67 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_67 + 160]
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require mem[_67 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_67 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_67 + 160]
                                        idx = idx + 1
                                        continue 
                            else:
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_67 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_67 + 160]:
                                                require (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]) / mem[_67 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_67 + 160] = (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_67 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_67 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160] / mem[_67 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_67 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_67 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                    require mem[_67 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_67 + 160]
                                    revert
                                else:
                                    mem[_67 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_67 + 160]:
                                                require (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]) / mem[_67 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_67 + 160] = (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_67 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_67 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160] / mem[_67 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_67 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_67 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                    require mem[_67 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_67 + 160]
                                    revert
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_67 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_67 + 160]:
                                            require (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]) / mem[_67 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_67 + 160] = (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_67 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_67 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160] / mem[_67 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_67 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_67 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_67 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_67 + 160]
                                revert
                            else:
                                mem[_67 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_67 + 160]:
                                            require (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]) / mem[_67 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_67 + 160] = (-365 * mem[_67 + 160]) + (365 * s * mem[_67 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_67 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_67 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160] / mem[_67 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_67 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_67 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_67 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_67 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_67 + 160]
                                revert
                    else:
                        if 10000 / sub_a35b0488[address(arg1)][arg3]:
                            require 365 * 10000 / sub_a35b0488[address(arg1)][arg3] / 10000 / sub_a35b0488[address(arg1)][arg3] == 365
                            if 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                require stor6 - block.timestamp / 24 * 3600 * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                                require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                require stor6 - block.timestamp / 24 * 3600 * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                                s = 1
                                s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                            else:
                                require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                require 0 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                                s = 1
                                s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                        else:
                            require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                            require stor6 - block.timestamp / 24 * 3600 * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                            revert
                else:
                    if 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                        require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == 1
                        require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 >= 0
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
                    else:
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
            if 0 <= 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                revert with 0, 'value too small interest can not be applied'
    require stor10 >= stor10
    require stor9 + stor8 >= stor8
    require stor5 <= 10000
    if not -stor5 + 10000:
        if 0 < stor10:
            revert with 0, 'amount to borrow should obey minimumReserveRatio rule'
    else:
        require (10000 * stor9) - (stor5 * stor9) + (10000 * stor8) - (stor5 * stor8) / -stor5 + 10000 == stor9 + stor8
        if (10000 * stor9) - (stor5 * stor9) + (10000 * stor8) - (stor5 * stor8) / 10000 < stor10:
            revert with 0, 'amount to borrow should obey minimumReserveRatio rule'
    return 0
}

function borrow(address arg1, uint256 arg2, uint256 arg3) payable {
    require block.timestamp < stor14
    if 5 <= uint256(sub_26d94911[msg.sender].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Length of borrowerLoanIdxes for msg.sender > or = MAX_LOANS_PER_BORROWER'
    if 30 <= loans.length:
        revert with 0, 'loans.length = or > MAX_LOANS'
    if arg3 >= sub_a35b0488[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Length of interestRates[] is < or = desiredIdx'
    require arg3 < sub_a35b0488[address(arg1)]
    mem[96 len 192] = code.data[9411 len 192]
    require arg3 < sub_24f34c0c[address(arg1)]
    require arg3 < sub_a35b0488[address(arg1)]
    mem[64] = 480
    require arg3 < sub_24f34c0c[address(arg1)]
    mem[288] = sub_24f34c0c[address(arg1)][arg3]
    mem[32] = 29
    require arg3 < sub_a35b0488[address(arg1)]
    mem[0] = sha3(address(arg1), 29)
    require sub_a35b0488[address(arg1)][arg3]
    mem[320] = 10000 / sub_a35b0488[address(arg1)][arg3]
    mem[384] = arg2
    require block.timestamp <= stor6
    mem[416] = stor6 - block.timestamp / 24 * 3600
    mem[448] = 18
    mem[484] = arg1
    mem[516] = loanTokenAddress
    mem[548] = arg2
    require ext_code.size(sub_c0924b80Address)
    call sub_c0924b80Address.0x6b441d8a with:
         gas gas_remaining wei
        args address(arg1), loanTokenAddress, arg2
    mem[480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[352] = ext_call.return_data[0]
    if not arg2:
        require sub_24f34c0c[address(arg1)][arg3]
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < 18:
            _76 = mem[64]
            mem[64] = mem[64] + 192
            mem[_76 len 192] = code.data[9411 len 192]
            if idx:
                if idx != 1:
                    _79 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_79] = (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                    mem[_79 + 32] = 365^idx
                    s = 1
                    while s <= idx:
                        require s == s
                        s = s + 1
                        continue 
                    mem[_79 + 64] = 1
                    if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                        require (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 1
                        if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                            require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 365^idx
                            mem[_79 + 96] = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_79 + 128] = 1
                                mem[_79 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_79 + 160]:
                                            require (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]) / mem[_79 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_79 + 160] = (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_79 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_79 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160] / mem[_79 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_79 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_79 + 160] = 0
                                            s = s + 1
                                            continue 
                                if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                    require mem[_79 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_79 + 160]
                                    require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    require mem[_79 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                    s = 1
                                    s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    s = mem[_79 + 160]
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                    s = 1
                                    s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    s = mem[_79 + 160]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_79 + 128] = 0
                                mem[_79 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_79 + 160]:
                                            require (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]) / mem[_79 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_79 + 160] = (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_79 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_79 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160] / mem[_79 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_79 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_79 + 160] = 0
                                            s = s + 1
                                            continue 
                                if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                    require mem[_79 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_79 + 160]
                                    require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    require mem[_79 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                    s = 0
                                    s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    s = mem[_79 + 160]
                                    idx = idx + 1
                                    continue 
                                else:
                                    require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                    s = 0
                                    s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                    s = mem[_79 + 160]
                                    idx = idx + 1
                                    continue 
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_79 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_79 + 160]:
                                            require (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]) / mem[_79 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_79 + 160] = (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_79 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_79 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160] / mem[_79 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_79 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_79 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_79 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_79 + 160]
                                revert
                            else:
                                mem[_79 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_79 + 160]:
                                            require (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]) / mem[_79 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_79 + 160] = (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_79 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_79 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160] / mem[_79 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_79 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_79 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_79 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_79 + 160]
                                revert
                    else:
                        require 1 <= idx
                        if not bool(idx - 1):
                            mem[_79 + 160] = stor6 - block.timestamp / 24 * 3600
                            s = 2
                            while s <= idx:
                                require 1 <= s
                                if s - 1:
                                    require (365 * s) - 365 / s - 1 == 365
                                    require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                    if mem[_79 + 160]:
                                        require (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]) / mem[_79 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                        mem[_79 + 160] = (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_79 + 160] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor6 - block.timestamp / 24 * 3600 <= 0
                                    if mem[_79 + 160]:
                                        require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160] / mem[_79 + 160] == -stor6 - block.timestamp / 24 * 3600
                                        mem[_79 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_79 + 160] = 0
                                        s = s + 1
                                        continue 
                            require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                            require mem[_79 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_79 + 160]
                            revert
                        else:
                            mem[_79 + 160] = stor6 - block.timestamp / 24 * 3600
                            s = 2
                            while s <= idx:
                                require 1 <= s
                                if s - 1:
                                    require (365 * s) - 365 / s - 1 == 365
                                    require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                    if mem[_79 + 160]:
                                        require (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]) / mem[_79 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                        mem[_79 + 160] = (-365 * mem[_79 + 160]) + (365 * s * mem[_79 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160])
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_79 + 160] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor6 - block.timestamp / 24 * 3600 <= 0
                                    if mem[_79 + 160]:
                                        require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160] / mem[_79 + 160] == -stor6 - block.timestamp / 24 * 3600
                                        mem[_79 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_79 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        mem[_79 + 160] = 0
                                        s = s + 1
                                        continue 
                            require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                            require mem[_79 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_79 + 160]
                            revert
                else:
                    if 10000 / sub_a35b0488[address(arg1)][arg3]:
                        require 365 * 10000 / sub_a35b0488[address(arg1)][arg3] / 10000 / sub_a35b0488[address(arg1)][arg3] == 365
                        if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                            require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                            require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                            require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                            s = 1
                            s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                            s = stor6 - block.timestamp / 24 * 3600
                            idx = idx + 1
                            continue 
                        else:
                            require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                            require 0 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                            s = 1
                            s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                            s = stor6 - block.timestamp / 24 * 3600
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                        require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                        revert
            else:
                if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                    require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == 1
                    require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 >= 0
                    s = 1
                    s = 1
                    s = 1
                    idx = idx + 1
                    continue 
                else:
                    s = 1
                    s = 1
                    s = 1
                    idx = idx + 1
                    continue 
        if 0 <= 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
            revert with 0, 'value too small interest can not be applied'
    else:
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        if not ext_call.return_data[0] * arg2:
            require sub_24f34c0c[address(arg1)][arg3]
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < 18:
                _73 = mem[64]
                mem[64] = mem[64] + 192
                mem[_73 len 192] = code.data[9411 len 192]
                if idx:
                    if idx != 1:
                        _78 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_78] = (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                        mem[_78 + 32] = 365^idx
                        s = 1
                        while s <= idx:
                            require s == s
                            s = s + 1
                            continue 
                        mem[_78 + 64] = 1
                        if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                            require (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 1
                            if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                                require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 365^idx
                                mem[_78 + 96] = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_78 + 128] = 1
                                    mem[_78 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_78 + 160]:
                                                require (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]) / mem[_78 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_78 + 160] = (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_78 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_78 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160] / mem[_78 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_78 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_78 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                        require mem[_78 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_78 + 160]
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require mem[_78 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_78 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_78 + 160]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_78 + 128] = 0
                                    mem[_78 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_78 + 160]:
                                                require (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]) / mem[_78 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_78 + 160] = (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_78 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_78 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160] / mem[_78 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_78 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_78 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                        require mem[_78 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_78 + 160]
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require mem[_78 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_78 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_78 + 160]
                                        idx = idx + 1
                                        continue 
                            else:
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_78 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_78 + 160]:
                                                require (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]) / mem[_78 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_78 + 160] = (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_78 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_78 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160] / mem[_78 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_78 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_78 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                    require mem[_78 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_78 + 160]
                                    revert
                                else:
                                    mem[_78 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_78 + 160]:
                                                require (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]) / mem[_78 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_78 + 160] = (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_78 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_78 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160] / mem[_78 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_78 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_78 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                    require mem[_78 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_78 + 160]
                                    revert
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_78 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_78 + 160]:
                                            require (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]) / mem[_78 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_78 + 160] = (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_78 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_78 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160] / mem[_78 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_78 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_78 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_78 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_78 + 160]
                                revert
                            else:
                                mem[_78 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_78 + 160]:
                                            require (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]) / mem[_78 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_78 + 160] = (-365 * mem[_78 + 160]) + (365 * s * mem[_78 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_78 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_78 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160] / mem[_78 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_78 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_78 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_78 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_78 + 160] * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_78 + 160]
                                revert
                    else:
                        if 10000 / sub_a35b0488[address(arg1)][arg3]:
                            require 365 * 10000 / sub_a35b0488[address(arg1)][arg3] / 10000 / sub_a35b0488[address(arg1)][arg3] == 365
                            if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                                require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                                s = 1
                                s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                            else:
                                require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                require 0 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                                s = 1
                                s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                        else:
                            require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                            require stor6 - block.timestamp / 24 * 3600 * 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                            revert
                else:
                    if 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                        require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == 1
                        require 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18 >= 0
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
                    else:
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
            if 0 <= 0 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                revert with 0, 'value too small interest can not be applied'
        else:
            require 10000 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 == 10000
            require sub_24f34c0c[address(arg1)][arg3]
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < 18:
                _70 = mem[64]
                mem[64] = mem[64] + 192
                mem[_70 len 192] = code.data[9411 len 192]
                if idx:
                    if idx != 1:
                        _77 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_77] = (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                        mem[_77 + 32] = 365^idx
                        s = 1
                        while s <= idx:
                            require s == s
                            s = s + 1
                            continue 
                        mem[_77 + 64] = 1
                        if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                            require (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 1
                            if (10000 / sub_a35b0488[address(arg1)][arg3])^idx:
                                require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx / (10000 / sub_a35b0488[address(arg1)][arg3])^idx == 365^idx
                                mem[_77 + 96] = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_77 + 128] = 1
                                    mem[_77 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_77 + 160]:
                                                require (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]) / mem[_77 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_77 + 160] = (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_77 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_77 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160] / mem[_77 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_77 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_77 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                        require mem[_77 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_77 + 160]
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require mem[_77 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_77 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_77 + 160]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_77 + 128] = 0
                                    mem[_77 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_77 + 160]:
                                                require (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]) / mem[_77 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_77 + 160] = (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_77 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_77 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160] / mem[_77 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_77 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_77 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                        require mem[_77 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_77 + 160]
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require mem[_77 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_77 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        require 0 / 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / sub_a35b0488[address(arg1)][arg3])^idx
                                        s = mem[_77 + 160]
                                        idx = idx + 1
                                        continue 
                            else:
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_77 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_77 + 160]:
                                                require (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]) / mem[_77 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_77 + 160] = (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_77 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_77 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160] / mem[_77 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_77 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_77 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                    require mem[_77 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_77 + 160]
                                    revert
                                else:
                                    mem[_77 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_77 + 160]:
                                                require (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]) / mem[_77 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_77 + 160] = (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_77 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_77 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160] / mem[_77 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_77 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_77 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                    require mem[_77 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_77 + 160]
                                    revert
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_77 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_77 + 160]:
                                            require (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]) / mem[_77 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_77 + 160] = (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_77 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_77 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160] / mem[_77 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_77 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_77 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_77 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_77 + 160]
                                revert
                            else:
                                mem[_77 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_77 + 160]:
                                            require (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]) / mem[_77 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_77 + 160] = (-365 * mem[_77 + 160]) + (365 * s * mem[_77 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_77 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_77 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160] / mem[_77 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_77 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_77 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_77 + 160] = 0
                                            s = s + 1
                                            continue 
                                require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                                require mem[_77 + 160] * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == mem[_77 + 160]
                                revert
                    else:
                        if 10000 / sub_a35b0488[address(arg1)][arg3]:
                            require 365 * 10000 / sub_a35b0488[address(arg1)][arg3] / 10000 / sub_a35b0488[address(arg1)][arg3] == 365
                            if 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                                require stor6 - block.timestamp / 24 * 3600 * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                                require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                require stor6 - block.timestamp / 24 * 3600 * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                                s = 1
                                s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                            else:
                                require 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                require 0 / 365 * 10000 / sub_a35b0488[address(arg1)][arg3] >= 0
                                s = 1
                                s = 365 * 10000 / sub_a35b0488[address(arg1)][arg3]
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                        else:
                            require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18
                            require stor6 - block.timestamp / 24 * 3600 * 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == stor6 - block.timestamp / 24 * 3600
                            revert
                else:
                    if 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                        require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 / 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 == 1
                        require 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18 >= 0
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
                    else:
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
            if 0 <= 10000 * ext_call.return_data[0] * arg2 / sub_24f34c0c[address(arg1)][arg3] / 10^18:
                revert with 0, 'value too small interest can not be applied'
    require stor10 >= stor10
    require stor9 + stor8 >= stor8
    require stor5 <= 10000
    if not -stor5 + 10000:
        if 0 < stor10:
            revert with 0, 'amount to borrow should obey minimumReserveRatio rule'
    else:
        require (10000 * stor9) - (stor5 * stor9) + (10000 * stor8) - (stor5 * stor8) / -stor5 + 10000 == stor9 + stor8
        if (10000 * stor9) - (stor5 * stor9) + (10000 * stor8) - (stor5 * stor8) / 10000 < stor10:
            revert with 0, 'amount to borrow should obey minimumReserveRatio rule'
    revert with 0, 'borrowAmount = 0'
}

function sub_62aa2ee6(?) {
    mem[0] = msg.sender
    mem[32] = 16
    mem[64] = (32 * uint256(sub_26d94911[address(msg.sender)].field_0)) + 128
    mem[96] = uint256(sub_26d94911[address(msg.sender)].field_0)
    if not uint256(sub_26d94911[address(msg.sender)].field_0):
        if uint256(sub_26d94911[address(msg.sender)].field_0) > 0:
            idx = 0
            while idx < uint256(sub_26d94911[address(msg.sender)].field_0):
                require idx < mem[96]
                _81 = mem[(32 * idx) + 128]
                require mem[(32 * idx) + 128] < loans.length
                require uint256(loans[mem[(32 * idx) + 128]].field_1536) <= block.timestamp
                require mem[(32 * idx) + 128] < loans.length
                mem[0] = 27
                require uint256(loans[mem[(32 * idx) + 128]].field_256)
                if block.timestamp - uint256(loans[mem[(32 * idx) + 128]].field_1536) / 24 * 3600 >= 1:
                    t = 0
                    t = 0
                    t = 0
                    s = 0
                    while s < 18:
                        _101 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_101 len 192] = code.data[9411 len 192]
                        if s:
                            if s != 1:
                                _105 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_105] = (10000 / uint256(loans[_81].field_256))^s
                                mem[_105 + 32] = 365^s
                                t = 1
                                while t <= s:
                                    require t == t
                                    t = t + 1
                                    continue 
                                mem[_105 + 64] = 1
                                if (10000 / uint256(loans[_81].field_256))^s:
                                    require (10000 / uint256(loans[_81].field_256))^s / (10000 / uint256(loans[_81].field_256))^s == 1
                                    if (10000 / uint256(loans[_81].field_256))^s:
                                        require 365^s * (10000 / uint256(loans[_81].field_256))^s / (10000 / uint256(loans[_81].field_256))^s == 365^s
                                        mem[_105 + 96] = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                        require 1 <= s
                                        if not bool(s - 1):
                                            mem[_105 + 128] = 1
                                            mem[_105 + 160] = block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                if t - 1:
                                                    require (365 * t) - 365 / t - 1 == 365
                                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                    if mem[_105 + 160]:
                                                        require (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]) / mem[_105 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600) - 365
                                                        mem[_105 + 160] = (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160])
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_105 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                                else:
                                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= 0
                                                    if mem[_105 + 160]:
                                                        require -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160] / mem[_105 + 160] == -block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                                        mem[_105 + 160] = -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_105 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                            if uint256(loans[_81].field_0):
                                                require mem[_105 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_105 + 160]
                                                require 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                require mem[_105 + 160] * uint256(loans[_81].field_0) / 365^s * (10000 / uint256(loans[_81].field_256))^s >= 0
                                                t = 1
                                                t = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                t = mem[_105 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                require 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                require 0 / 365^s * (10000 / uint256(loans[_81].field_256))^s >= 0
                                                t = 1
                                                t = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                t = mem[_105 + 160]
                                                s = s + 1
                                                continue 
                                        else:
                                            mem[_105 + 128] = 0
                                            mem[_105 + 160] = block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                if t - 1:
                                                    require (365 * t) - 365 / t - 1 == 365
                                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                    if mem[_105 + 160]:
                                                        require (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]) / mem[_105 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600) - 365
                                                        mem[_105 + 160] = (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160])
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_105 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                                else:
                                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= 0
                                                    if mem[_105 + 160]:
                                                        require -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160] / mem[_105 + 160] == -block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                                        mem[_105 + 160] = -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_105 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                            if uint256(loans[_81].field_0):
                                                require mem[_105 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_105 + 160]
                                                require 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                require mem[_105 + 160] * uint256(loans[_81].field_0) / 365^s * (10000 / uint256(loans[_81].field_256))^s <= 0
                                                t = 0
                                                t = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                t = mem[_105 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                require 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                require 0 / 365^s * (10000 / uint256(loans[_81].field_256))^s <= 0
                                                t = 0
                                                t = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                t = mem[_105 + 160]
                                                s = s + 1
                                                continue 
                                    else:
                                        require 1 <= s
                                        if not bool(s - 1):
                                            mem[_105 + 160] = block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                if t - 1:
                                                    require (365 * t) - 365 / t - 1 == 365
                                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                    if mem[_105 + 160]:
                                                        require (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]) / mem[_105 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600) - 365
                                                        mem[_105 + 160] = (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160])
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_105 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                                else:
                                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= 0
                                                    if mem[_105 + 160]:
                                                        require -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160] / mem[_105 + 160] == -block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                                        mem[_105 + 160] = -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_105 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                            require uint256(loans[_81].field_0)
                                            require mem[_105 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_105 + 160]
                                            revert
                                        else:
                                            mem[_105 + 160] = block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                if t - 1:
                                                    require (365 * t) - 365 / t - 1 == 365
                                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                    if mem[_105 + 160]:
                                                        require (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]) / mem[_105 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600) - 365
                                                        mem[_105 + 160] = (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160])
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_105 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                                else:
                                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= 0
                                                    if mem[_105 + 160]:
                                                        require -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160] / mem[_105 + 160] == -block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                                        mem[_105 + 160] = -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_105 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                            require uint256(loans[_81].field_0)
                                            require mem[_105 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_105 + 160]
                                            revert
                                else:
                                    require 1 <= s
                                    if not bool(s - 1):
                                        mem[_105 + 160] = block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_105 + 160]:
                                                    require (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]) / mem[_105 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600) - 365
                                                    mem[_105 + 160] = (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_105 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= 0
                                                if mem[_105 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160] / mem[_105 + 160] == -block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                                    mem[_105 + 160] = -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_105 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        require uint256(loans[_81].field_0)
                                        require mem[_105 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_105 + 160]
                                        revert
                                    else:
                                        mem[_105 + 160] = block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_105 + 160]:
                                                    require (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]) / mem[_105 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600) - 365
                                                    mem[_105 + 160] = (-365 * mem[_105 + 160]) + (365 * t * mem[_105 + 160]) - (block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_105 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 <= 0
                                                if mem[_105 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160] / mem[_105 + 160] == -block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                                    mem[_105 + 160] = -1 * block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * mem[_105 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_105 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        require uint256(loans[_81].field_0)
                                        require mem[_105 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_105 + 160]
                                        revert
                            else:
                                if 10000 / uint256(loans[_81].field_256):
                                    require 365 * 10000 / uint256(loans[_81].field_256) / 10000 / uint256(loans[_81].field_256) == 365
                                    if uint256(loans[_81].field_0):
                                        require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                        require 365 * 10000 / uint256(loans[_81].field_256)
                                        require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * uint256(loans[_81].field_0) / 365 * 10000 / uint256(loans[_81].field_256) >= 0
                                        t = 1
                                        t = 365 * 10000 / uint256(loans[_81].field_256)
                                        t = block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                        s = s + 1
                                        continue 
                                    else:
                                        require 365 * 10000 / uint256(loans[_81].field_256)
                                        require 0 / 365 * 10000 / uint256(loans[_81].field_256) >= 0
                                        t = 1
                                        t = 365 * 10000 / uint256(loans[_81].field_256)
                                        t = block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                        s = s + 1
                                        continue 
                                else:
                                    require uint256(loans[_81].field_0)
                                    require block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600 * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == block.timestamp - uint256(loans[_81].field_1536) / 24 * 3600
                                    revert
                        else:
                            if uint256(loans[_81].field_0):
                                require uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == 1
                                require uint256(loans[_81].field_0) >= 0
                                t = 1
                                t = 1
                                t = 1
                                s = s + 1
                                continue 
                            else:
                                t = 1
                                t = 1
                                t = 1
                                s = s + 1
                                continue 
                else:
                    t = 0
                    t = 0
                    t = 0
                    s = 0
                    while s < 18:
                        _102 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_102 len 192] = code.data[9411 len 192]
                        if s:
                            if s != 1:
                                _106 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_106] = (10000 / uint256(loans[_81].field_256))^s
                                mem[_106 + 32] = 365^s
                                t = 1
                                while t <= s:
                                    require t == t
                                    t = t + 1
                                    continue 
                                mem[_106 + 64] = 1
                                if (10000 / uint256(loans[_81].field_256))^s:
                                    require (10000 / uint256(loans[_81].field_256))^s / (10000 / uint256(loans[_81].field_256))^s == 1
                                    if (10000 / uint256(loans[_81].field_256))^s:
                                        require 365^s * (10000 / uint256(loans[_81].field_256))^s / (10000 / uint256(loans[_81].field_256))^s == 365^s
                                        mem[_106 + 96] = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                        require 1 <= s
                                        if not bool(s - 1):
                                            mem[_106 + 128] = 1
                                            mem[_106 + 160] = 1
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                require t - 1
                                                require (365 * t) - 365 / t - 1 == 365
                                                require 1 <= (365 * t) - 365
                                                if mem[_106 + 160]:
                                                    require (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160]) / mem[_106 + 160] == (365 * t) - 366
                                                    mem[_106 + 160] = (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_106 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            if uint256(loans[_81].field_0):
                                                require mem[_106 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_106 + 160]
                                                require 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                require mem[_106 + 160] * uint256(loans[_81].field_0) / 365^s * (10000 / uint256(loans[_81].field_256))^s >= 0
                                                t = 1
                                                t = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                t = mem[_106 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                require 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                require 0 / 365^s * (10000 / uint256(loans[_81].field_256))^s >= 0
                                                t = 1
                                                t = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                t = mem[_106 + 160]
                                                s = s + 1
                                                continue 
                                        else:
                                            mem[_106 + 128] = 0
                                            mem[_106 + 160] = 1
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                require t - 1
                                                require (365 * t) - 365 / t - 1 == 365
                                                require 1 <= (365 * t) - 365
                                                if mem[_106 + 160]:
                                                    require (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160]) / mem[_106 + 160] == (365 * t) - 366
                                                    mem[_106 + 160] = (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_106 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            if uint256(loans[_81].field_0):
                                                require mem[_106 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_106 + 160]
                                                require 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                require mem[_106 + 160] * uint256(loans[_81].field_0) / 365^s * (10000 / uint256(loans[_81].field_256))^s <= 0
                                                t = 0
                                                t = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                t = mem[_106 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                require 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                require 0 / 365^s * (10000 / uint256(loans[_81].field_256))^s <= 0
                                                t = 0
                                                t = 365^s * (10000 / uint256(loans[_81].field_256))^s
                                                t = mem[_106 + 160]
                                                s = s + 1
                                                continue 
                                    else:
                                        require 1 <= s
                                        if not bool(s - 1):
                                            mem[_106 + 160] = 1
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                require t - 1
                                                require (365 * t) - 365 / t - 1 == 365
                                                require 1 <= (365 * t) - 365
                                                if mem[_106 + 160]:
                                                    require (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160]) / mem[_106 + 160] == (365 * t) - 366
                                                    mem[_106 + 160] = (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_106 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            require uint256(loans[_81].field_0)
                                            require mem[_106 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_106 + 160]
                                            revert
                                        else:
                                            mem[_106 + 160] = 1
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                require t - 1
                                                require (365 * t) - 365 / t - 1 == 365
                                                require 1 <= (365 * t) - 365
                                                if mem[_106 + 160]:
                                                    require (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160]) / mem[_106 + 160] == (365 * t) - 366
                                                    mem[_106 + 160] = (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_106 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            require uint256(loans[_81].field_0)
                                            require mem[_106 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_106 + 160]
                                            revert
                                else:
                                    require 1 <= s
                                    if not bool(s - 1):
                                        mem[_106 + 160] = 1
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            require t - 1
                                            require (365 * t) - 365 / t - 1 == 365
                                            require 1 <= (365 * t) - 365
                                            if mem[_106 + 160]:
                                                require (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160]) / mem[_106 + 160] == (365 * t) - 366
                                                mem[_106 + 160] = (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160])
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_106 + 160] = 0
                                                t = t + 1
                                                continue 
                                        require uint256(loans[_81].field_0)
                                        require mem[_106 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_106 + 160]
                                        revert
                                    else:
                                        mem[_106 + 160] = 1
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            require t - 1
                                            require (365 * t) - 365 / t - 1 == 365
                                            require 1 <= (365 * t) - 365
                                            if mem[_106 + 160]:
                                                require (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160]) / mem[_106 + 160] == (365 * t) - 366
                                                mem[_106 + 160] = (-366 * mem[_106 + 160]) + (365 * t * mem[_106 + 160])
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_106 + 160] = 0
                                                t = t + 1
                                                continue 
                                        require uint256(loans[_81].field_0)
                                        require mem[_106 + 160] * uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == mem[_106 + 160]
                                        revert
                            else:
                                if 10000 / uint256(loans[_81].field_256):
                                    require 365 * 10000 / uint256(loans[_81].field_256) / 10000 / uint256(loans[_81].field_256) == 365
                                    if uint256(loans[_81].field_0):
                                        require uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == 1
                                        require 365 * 10000 / uint256(loans[_81].field_256)
                                        require uint256(loans[_81].field_0) / 365 * 10000 / uint256(loans[_81].field_256) >= 0
                                        t = 1
                                        t = 365 * 10000 / uint256(loans[_81].field_256)
                                        t = 1
                                        s = s + 1
                                        continue 
                                    else:
                                        require 365 * 10000 / uint256(loans[_81].field_256)
                                        require 0 / 365 * 10000 / uint256(loans[_81].field_256) >= 0
                                        t = 1
                                        t = 365 * 10000 / uint256(loans[_81].field_256)
                                        t = 1
                                        s = s + 1
                                        continue 
                                else:
                                    require uint256(loans[_81].field_0)
                                    require uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == 1
                                    revert
                        else:
                            if uint256(loans[_81].field_0):
                                require uint256(loans[_81].field_0) / uint256(loans[_81].field_0) == 1
                                require uint256(loans[_81].field_0) >= 0
                                t = 1
                                t = 1
                                t = 1
                                s = s + 1
                                continue 
                            else:
                                t = 1
                                t = 1
                                t = 1
                                s = s + 1
                                continue 
                idx = idx + 1
                continue 
    else:
        mem[0] = sha3(address(msg.sender), 16)
        mem[128] = uint256(sub_26d94911[address(msg.sender)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(sub_26d94911[address(msg.sender)].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(sub_26d94911[address(msg.sender)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if uint256(sub_26d94911[address(msg.sender)].field_0) > 0:
            idx = 0
            while idx < uint256(sub_26d94911[address(msg.sender)].field_0):
                require idx < mem[96]
                _225 = mem[(32 * idx) + 128]
                require mem[(32 * idx) + 128] < loans.length
                require uint256(loans[mem[(32 * idx) + 128]].field_1536) <= block.timestamp
                require mem[(32 * idx) + 128] < loans.length
                mem[0] = 27
                require uint256(loans[mem[(32 * idx) + 128]].field_256)
                if block.timestamp - uint256(loans[mem[(32 * idx) + 128]].field_1536) / 24 * 3600 >= 1:
                    t = 0
                    t = 0
                    t = 0
                    s = 0
                    while s < 18:
                        _318 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_318 len 192] = code.data[9411 len 192]
                        if s:
                            if s != 1:
                                _320 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_320] = (10000 / uint256(loans[_225].field_256))^s
                                mem[_320 + 32] = 365^s
                                t = 1
                                while t <= s:
                                    require t == t
                                    t = t + 1
                                    continue 
                                mem[_320 + 64] = 1
                                if (10000 / uint256(loans[_225].field_256))^s:
                                    require (10000 / uint256(loans[_225].field_256))^s / (10000 / uint256(loans[_225].field_256))^s == 1
                                    if (10000 / uint256(loans[_225].field_256))^s:
                                        require 365^s * (10000 / uint256(loans[_225].field_256))^s / (10000 / uint256(loans[_225].field_256))^s == 365^s
                                        mem[_320 + 96] = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                        require 1 <= s
                                        if not bool(s - 1):
                                            mem[_320 + 128] = 1
                                            mem[_320 + 160] = block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                if t - 1:
                                                    require (365 * t) - 365 / t - 1 == 365
                                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                    if mem[_320 + 160]:
                                                        require (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]) / mem[_320 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600) - 365
                                                        mem[_320 + 160] = (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160])
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_320 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                                else:
                                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= 0
                                                    if mem[_320 + 160]:
                                                        require -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160] / mem[_320 + 160] == -block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                                        mem[_320 + 160] = -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_320 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                            if uint256(loans[_225].field_0):
                                                require mem[_320 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_320 + 160]
                                                require 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                require mem[_320 + 160] * uint256(loans[_225].field_0) / 365^s * (10000 / uint256(loans[_225].field_256))^s >= 0
                                                t = 1
                                                t = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                t = mem[_320 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                require 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                require 0 / 365^s * (10000 / uint256(loans[_225].field_256))^s >= 0
                                                t = 1
                                                t = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                t = mem[_320 + 160]
                                                s = s + 1
                                                continue 
                                        else:
                                            mem[_320 + 128] = 0
                                            mem[_320 + 160] = block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                if t - 1:
                                                    require (365 * t) - 365 / t - 1 == 365
                                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                    if mem[_320 + 160]:
                                                        require (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]) / mem[_320 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600) - 365
                                                        mem[_320 + 160] = (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160])
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_320 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                                else:
                                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= 0
                                                    if mem[_320 + 160]:
                                                        require -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160] / mem[_320 + 160] == -block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                                        mem[_320 + 160] = -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_320 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                            if uint256(loans[_225].field_0):
                                                require mem[_320 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_320 + 160]
                                                require 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                require mem[_320 + 160] * uint256(loans[_225].field_0) / 365^s * (10000 / uint256(loans[_225].field_256))^s <= 0
                                                t = 0
                                                t = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                t = mem[_320 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                require 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                require 0 / 365^s * (10000 / uint256(loans[_225].field_256))^s <= 0
                                                t = 0
                                                t = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                t = mem[_320 + 160]
                                                s = s + 1
                                                continue 
                                    else:
                                        require 1 <= s
                                        if not bool(s - 1):
                                            mem[_320 + 160] = block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                if t - 1:
                                                    require (365 * t) - 365 / t - 1 == 365
                                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                    if mem[_320 + 160]:
                                                        require (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]) / mem[_320 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600) - 365
                                                        mem[_320 + 160] = (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160])
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_320 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                                else:
                                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= 0
                                                    if mem[_320 + 160]:
                                                        require -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160] / mem[_320 + 160] == -block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                                        mem[_320 + 160] = -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_320 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                            require uint256(loans[_225].field_0)
                                            require mem[_320 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_320 + 160]
                                            revert
                                        else:
                                            mem[_320 + 160] = block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                if t - 1:
                                                    require (365 * t) - 365 / t - 1 == 365
                                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                    if mem[_320 + 160]:
                                                        require (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]) / mem[_320 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600) - 365
                                                        mem[_320 + 160] = (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160])
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_320 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                                else:
                                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= 0
                                                    if mem[_320 + 160]:
                                                        require -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160] / mem[_320 + 160] == -block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                                        mem[_320 + 160] = -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        mem[_320 + 160] = 0
                                                        t = t + 1
                                                        continue 
                                            require uint256(loans[_225].field_0)
                                            require mem[_320 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_320 + 160]
                                            revert
                                else:
                                    require 1 <= s
                                    if not bool(s - 1):
                                        mem[_320 + 160] = block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_320 + 160]:
                                                    require (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]) / mem[_320 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600) - 365
                                                    mem[_320 + 160] = (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_320 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= 0
                                                if mem[_320 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160] / mem[_320 + 160] == -block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                                    mem[_320 + 160] = -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_320 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        require uint256(loans[_225].field_0)
                                        require mem[_320 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_320 + 160]
                                        revert
                                    else:
                                        mem[_320 + 160] = block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_320 + 160]:
                                                    require (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]) / mem[_320 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600) - 365
                                                    mem[_320 + 160] = (-365 * mem[_320 + 160]) + (365 * t * mem[_320 + 160]) - (block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_320 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 <= 0
                                                if mem[_320 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160] / mem[_320 + 160] == -block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                                    mem[_320 + 160] = -1 * block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * mem[_320 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_320 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        require uint256(loans[_225].field_0)
                                        require mem[_320 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_320 + 160]
                                        revert
                            else:
                                if 10000 / uint256(loans[_225].field_256):
                                    require 365 * 10000 / uint256(loans[_225].field_256) / 10000 / uint256(loans[_225].field_256) == 365
                                    if uint256(loans[_225].field_0):
                                        require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                        require 365 * 10000 / uint256(loans[_225].field_256)
                                        require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * uint256(loans[_225].field_0) / 365 * 10000 / uint256(loans[_225].field_256) >= 0
                                        t = 1
                                        t = 365 * 10000 / uint256(loans[_225].field_256)
                                        t = block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                        s = s + 1
                                        continue 
                                    else:
                                        require 365 * 10000 / uint256(loans[_225].field_256)
                                        require 0 / 365 * 10000 / uint256(loans[_225].field_256) >= 0
                                        t = 1
                                        t = 365 * 10000 / uint256(loans[_225].field_256)
                                        t = block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                        s = s + 1
                                        continue 
                                else:
                                    require uint256(loans[_225].field_0)
                                    require block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600 * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == block.timestamp - uint256(loans[_225].field_1536) / 24 * 3600
                                    revert
                        else:
                            if uint256(loans[_225].field_0):
                                require uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == 1
                                require uint256(loans[_225].field_0) >= 0
                                t = 1
                                t = 1
                                t = 1
                                s = s + 1
                                continue 
                            else:
                                t = 1
                                t = 1
                                t = 1
                                s = s + 1
                                continue 
                else:
                    t = 0
                    t = 0
                    t = 0
                    s = 0
                    while s < 18:
                        _319 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_319 len 192] = code.data[9411 len 192]
                        if s:
                            if s != 1:
                                _321 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_321] = (10000 / uint256(loans[_225].field_256))^s
                                mem[_321 + 32] = 365^s
                                t = 1
                                while t <= s:
                                    require t == t
                                    t = t + 1
                                    continue 
                                mem[_321 + 64] = 1
                                if (10000 / uint256(loans[_225].field_256))^s:
                                    require (10000 / uint256(loans[_225].field_256))^s / (10000 / uint256(loans[_225].field_256))^s == 1
                                    if (10000 / uint256(loans[_225].field_256))^s:
                                        require 365^s * (10000 / uint256(loans[_225].field_256))^s / (10000 / uint256(loans[_225].field_256))^s == 365^s
                                        mem[_321 + 96] = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                        require 1 <= s
                                        if not bool(s - 1):
                                            mem[_321 + 128] = 1
                                            mem[_321 + 160] = 1
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                require t - 1
                                                require (365 * t) - 365 / t - 1 == 365
                                                require 1 <= (365 * t) - 365
                                                if mem[_321 + 160]:
                                                    require (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160]) / mem[_321 + 160] == (365 * t) - 366
                                                    mem[_321 + 160] = (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_321 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            if uint256(loans[_225].field_0):
                                                require mem[_321 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_321 + 160]
                                                require 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                require mem[_321 + 160] * uint256(loans[_225].field_0) / 365^s * (10000 / uint256(loans[_225].field_256))^s >= 0
                                                t = 1
                                                t = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                t = mem[_321 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                require 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                require 0 / 365^s * (10000 / uint256(loans[_225].field_256))^s >= 0
                                                t = 1
                                                t = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                t = mem[_321 + 160]
                                                s = s + 1
                                                continue 
                                        else:
                                            mem[_321 + 128] = 0
                                            mem[_321 + 160] = 1
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                require t - 1
                                                require (365 * t) - 365 / t - 1 == 365
                                                require 1 <= (365 * t) - 365
                                                if mem[_321 + 160]:
                                                    require (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160]) / mem[_321 + 160] == (365 * t) - 366
                                                    mem[_321 + 160] = (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_321 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            if uint256(loans[_225].field_0):
                                                require mem[_321 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_321 + 160]
                                                require 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                require mem[_321 + 160] * uint256(loans[_225].field_0) / 365^s * (10000 / uint256(loans[_225].field_256))^s <= 0
                                                t = 0
                                                t = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                t = mem[_321 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                require 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                require 0 / 365^s * (10000 / uint256(loans[_225].field_256))^s <= 0
                                                t = 0
                                                t = 365^s * (10000 / uint256(loans[_225].field_256))^s
                                                t = mem[_321 + 160]
                                                s = s + 1
                                                continue 
                                    else:
                                        require 1 <= s
                                        if not bool(s - 1):
                                            mem[_321 + 160] = 1
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                require t - 1
                                                require (365 * t) - 365 / t - 1 == 365
                                                require 1 <= (365 * t) - 365
                                                if mem[_321 + 160]:
                                                    require (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160]) / mem[_321 + 160] == (365 * t) - 366
                                                    mem[_321 + 160] = (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_321 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            require uint256(loans[_225].field_0)
                                            require mem[_321 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_321 + 160]
                                            revert
                                        else:
                                            mem[_321 + 160] = 1
                                            t = 2
                                            while t <= s:
                                                require 1 <= t
                                                require t - 1
                                                require (365 * t) - 365 / t - 1 == 365
                                                require 1 <= (365 * t) - 365
                                                if mem[_321 + 160]:
                                                    require (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160]) / mem[_321 + 160] == (365 * t) - 366
                                                    mem[_321 + 160] = (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_321 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            require uint256(loans[_225].field_0)
                                            require mem[_321 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_321 + 160]
                                            revert
                                else:
                                    require 1 <= s
                                    if not bool(s - 1):
                                        mem[_321 + 160] = 1
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            require t - 1
                                            require (365 * t) - 365 / t - 1 == 365
                                            require 1 <= (365 * t) - 365
                                            if mem[_321 + 160]:
                                                require (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160]) / mem[_321 + 160] == (365 * t) - 366
                                                mem[_321 + 160] = (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160])
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_321 + 160] = 0
                                                t = t + 1
                                                continue 
                                        require uint256(loans[_225].field_0)
                                        require mem[_321 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_321 + 160]
                                        revert
                                    else:
                                        mem[_321 + 160] = 1
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            require t - 1
                                            require (365 * t) - 365 / t - 1 == 365
                                            require 1 <= (365 * t) - 365
                                            if mem[_321 + 160]:
                                                require (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160]) / mem[_321 + 160] == (365 * t) - 366
                                                mem[_321 + 160] = (-366 * mem[_321 + 160]) + (365 * t * mem[_321 + 160])
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_321 + 160] = 0
                                                t = t + 1
                                                continue 
                                        require uint256(loans[_225].field_0)
                                        require mem[_321 + 160] * uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == mem[_321 + 160]
                                        revert
                            else:
                                if 10000 / uint256(loans[_225].field_256):
                                    require 365 * 10000 / uint256(loans[_225].field_256) / 10000 / uint256(loans[_225].field_256) == 365
                                    if uint256(loans[_225].field_0):
                                        require uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == 1
                                        require 365 * 10000 / uint256(loans[_225].field_256)
                                        require uint256(loans[_225].field_0) / 365 * 10000 / uint256(loans[_225].field_256) >= 0
                                        t = 1
                                        t = 365 * 10000 / uint256(loans[_225].field_256)
                                        t = 1
                                        s = s + 1
                                        continue 
                                    else:
                                        require 365 * 10000 / uint256(loans[_225].field_256)
                                        require 0 / 365 * 10000 / uint256(loans[_225].field_256) >= 0
                                        t = 1
                                        t = 365 * 10000 / uint256(loans[_225].field_256)
                                        t = 1
                                        s = s + 1
                                        continue 
                                else:
                                    require uint256(loans[_225].field_0)
                                    require uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == 1
                                    revert
                        else:
                            if uint256(loans[_225].field_0):
                                require uint256(loans[_225].field_0) / uint256(loans[_225].field_0) == 1
                                require uint256(loans[_225].field_0) >= 0
                                t = 1
                                t = 1
                                t = 1
                                s = s + 1
                                continue 
                            else:
                                t = 1
                                t = 1
                                t = 1
                                s = s + 1
                                continue 
                idx = idx + 1
                continue 
    return 0
}

function sub_cd28ef22(?) payable {
    require block.timestamp < stor6
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 384
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 224] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 256] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 288] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 320] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 352] = 0
    require arg1.length <= 5
    require arg1.length == arg2.length
    idx = 0
    s = (32 * arg2.length) + (32 * arg1.length) + 160
    s = 0
    while idx < arg2.length:
        if idx <= 0:
            if idx < mem[96]:
                _97 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] < loans.length:
                    mem[0] = 27
                    _101 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_101] = uint256(loans[mem[(32 * idx) + 128]].field_0)
                    mem[_101 + 32] = uint256(loans[_97].field_256)
                    mem[_101 + 64] = uint256(loans[_97].field_512)
                    mem[_101 + 96] = uint256(loans[_97].field_768)
                    mem[_101 + 128] = address(loans[_97].field_1024)
                    mem[_101 + 160] = address(loans[_97].field_1280)
                    mem[_101 + 192] = uint256(loans[_97].field_1536)
                    if idx < mem[(32 * arg1.length) + 128]:
                        require mem[(32 * arg1.length) + (32 * idx) + 160] > 0
                        require msg.sender == address(loans[_97].field_1280)
                        require 0 < uint256(loans[_97].field_0)
                        if idx < mem[96]:
                            _120 = mem[(32 * idx) + 128]
                            require mem[(32 * idx) + 128] < loans.length
                            if uint256(loans[mem[(32 * idx) + 128]].field_1536) <= block.timestamp:
                                if block.timestamp - uint256(loans[mem[(32 * idx) + 128]].field_1536) / 24 * 3600 >= 1:
                                    if mem[(32 * idx) + 128] < loans.length:
                                        mem[0] = 27
                                        if uint256(loans[mem[(32 * idx) + 128]].field_256):
                                            u = 0
                                            u = 0
                                            u = 0
                                            t = 0
                                            while t < 18:
                                                _185 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_185 len 192] = code.data[9411 len 192]
                                                if t:
                                                    if t != 1:
                                                        _211 = mem[64]
                                                        mem[64] = mem[64] + 192
                                                        mem[_211] = (10000 / uint256(loans[_120].field_256))^t
                                                        mem[_211 + 32] = 365^t
                                                        s = 1
                                                        while s <= t:
                                                            require s == s
                                                            s = s + 1
                                                            continue 
                                                        mem[_211 + 64] = 1
                                                        if (10000 / uint256(loans[_120].field_256))^t:
                                                            require (10000 / uint256(loans[_120].field_256))^t / (10000 / uint256(loans[_120].field_256))^t == 1
                                                            if (10000 / uint256(loans[_120].field_256))^t:
                                                                require 365^t * (10000 / uint256(loans[_120].field_256))^t / (10000 / uint256(loans[_120].field_256))^t == 365^t
                                                                mem[_211 + 96] = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                require 1 <= t
                                                                if not bool(t - 1):
                                                                    mem[_211 + 128] = 1
                                                                    mem[_211 + 160] = block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                    s = 2
                                                                    while s <= t:
                                                                        require 1 <= s
                                                                        if s - 1:
                                                                            require (365 * s) - 365 / s - 1 == 365
                                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                            if mem[_211 + 160]:
                                                                                require (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]) / mem[_211 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600) - 365
                                                                                mem[_211 + 160] = (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160])
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_211 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                        else:
                                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= 0
                                                                            if mem[_211 + 160]:
                                                                                require -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160] / mem[_211 + 160] == -block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                                mem[_211 + 160] = -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_211 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                    if uint256(loans[_120].field_0):
                                                                        require mem[_211 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_211 + 160]
                                                                        require 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        require mem[_211 + 160] * uint256(loans[_120].field_0) / 365^t * (10000 / uint256(loans[_120].field_256))^t >= 0
                                                                        u = 1
                                                                        u = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        u = mem[_211 + 160]
                                                                        t = t + 1
                                                                        continue 
                                                                    else:
                                                                        require 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        require 0 / 365^t * (10000 / uint256(loans[_120].field_256))^t >= 0
                                                                        u = 1
                                                                        u = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        u = mem[_211 + 160]
                                                                        t = t + 1
                                                                        continue 
                                                                else:
                                                                    mem[_211 + 128] = 0
                                                                    mem[_211 + 160] = block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                    s = 2
                                                                    while s <= t:
                                                                        require 1 <= s
                                                                        if s - 1:
                                                                            require (365 * s) - 365 / s - 1 == 365
                                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                            if mem[_211 + 160]:
                                                                                require (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]) / mem[_211 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600) - 365
                                                                                mem[_211 + 160] = (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160])
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_211 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                        else:
                                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= 0
                                                                            if mem[_211 + 160]:
                                                                                require -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160] / mem[_211 + 160] == -block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                                mem[_211 + 160] = -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_211 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                    if uint256(loans[_120].field_0):
                                                                        require mem[_211 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_211 + 160]
                                                                        require 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        require mem[_211 + 160] * uint256(loans[_120].field_0) / 365^t * (10000 / uint256(loans[_120].field_256))^t <= 0
                                                                        u = 0
                                                                        u = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        u = mem[_211 + 160]
                                                                        t = t + 1
                                                                        continue 
                                                                    else:
                                                                        require 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        require 0 / 365^t * (10000 / uint256(loans[_120].field_256))^t <= 0
                                                                        u = 0
                                                                        u = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        u = mem[_211 + 160]
                                                                        t = t + 1
                                                                        continue 
                                                            else:
                                                                require 1 <= t
                                                                if not bool(t - 1):
                                                                    mem[_211 + 160] = block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                    s = 2
                                                                    while s <= t:
                                                                        require 1 <= s
                                                                        if s - 1:
                                                                            require (365 * s) - 365 / s - 1 == 365
                                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                            if mem[_211 + 160]:
                                                                                require (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]) / mem[_211 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600) - 365
                                                                                mem[_211 + 160] = (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160])
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_211 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                        else:
                                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= 0
                                                                            if mem[_211 + 160]:
                                                                                require -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160] / mem[_211 + 160] == -block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                                mem[_211 + 160] = -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_211 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                    require uint256(loans[_120].field_0)
                                                                    require mem[_211 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_211 + 160]
                                                                    revert
                                                                else:
                                                                    mem[_211 + 160] = block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                    s = 2
                                                                    while s <= t:
                                                                        require 1 <= s
                                                                        if s - 1:
                                                                            require (365 * s) - 365 / s - 1 == 365
                                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                            if mem[_211 + 160]:
                                                                                require (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]) / mem[_211 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600) - 365
                                                                                mem[_211 + 160] = (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160])
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_211 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                        else:
                                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= 0
                                                                            if mem[_211 + 160]:
                                                                                require -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160] / mem[_211 + 160] == -block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                                mem[_211 + 160] = -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_211 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                    require uint256(loans[_120].field_0)
                                                                    require mem[_211 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_211 + 160]
                                                                    revert
                                                        else:
                                                            require 1 <= t
                                                            if not bool(t - 1):
                                                                mem[_211 + 160] = block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                s = 2
                                                                while s <= t:
                                                                    require 1 <= s
                                                                    if s - 1:
                                                                        require (365 * s) - 365 / s - 1 == 365
                                                                        require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                        if mem[_211 + 160]:
                                                                            require (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]) / mem[_211 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600) - 365
                                                                            mem[_211 + 160] = (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160])
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_211 + 160] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                    else:
                                                                        require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= 0
                                                                        if mem[_211 + 160]:
                                                                            require -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160] / mem[_211 + 160] == -block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                            mem[_211 + 160] = -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_211 + 160] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                require uint256(loans[_120].field_0)
                                                                require mem[_211 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_211 + 160]
                                                                revert
                                                            else:
                                                                mem[_211 + 160] = block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                s = 2
                                                                while s <= t:
                                                                    require 1 <= s
                                                                    if s - 1:
                                                                        require (365 * s) - 365 / s - 1 == 365
                                                                        require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                        if mem[_211 + 160]:
                                                                            require (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]) / mem[_211 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600) - 365
                                                                            mem[_211 + 160] = (-365 * mem[_211 + 160]) + (365 * s * mem[_211 + 160]) - (block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160])
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_211 + 160] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                    else:
                                                                        require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 <= 0
                                                                        if mem[_211 + 160]:
                                                                            require -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160] / mem[_211 + 160] == -block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                            mem[_211 + 160] = -1 * block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * mem[_211 + 160]
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_211 + 160] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                require uint256(loans[_120].field_0)
                                                                require mem[_211 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_211 + 160]
                                                                revert
                                                    else:
                                                        if 10000 / uint256(loans[_120].field_256):
                                                            require 365 * 10000 / uint256(loans[_120].field_256) / 10000 / uint256(loans[_120].field_256) == 365
                                                            if uint256(loans[_120].field_0):
                                                                require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                require 365 * 10000 / uint256(loans[_120].field_256)
                                                                require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * uint256(loans[_120].field_0) / 365 * 10000 / uint256(loans[_120].field_256) >= 0
                                                                u = 1
                                                                u = 365 * 10000 / uint256(loans[_120].field_256)
                                                                u = block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                t = t + 1
                                                                continue 
                                                            else:
                                                                require 365 * 10000 / uint256(loans[_120].field_256)
                                                                require 0 / 365 * 10000 / uint256(loans[_120].field_256) >= 0
                                                                u = 1
                                                                u = 365 * 10000 / uint256(loans[_120].field_256)
                                                                u = block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                                t = t + 1
                                                                continue 
                                                        else:
                                                            require uint256(loans[_120].field_0)
                                                            require block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600 * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == block.timestamp - uint256(loans[_120].field_1536) / 24 * 3600
                                                            revert
                                                else:
                                                    if uint256(loans[_120].field_0):
                                                        require uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == 1
                                                        require uint256(loans[_120].field_0) >= 0
                                                        u = 1
                                                        u = 1
                                                        u = 1
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        u = 1
                                                        u = 1
                                                        u = 1
                                                        t = t + 1
                                                        continue 
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                if mem[_101 + 64] + mem[(32 * arg1.length) + (32 * idx) + 160] >= mem[(32 * arg1.length) + (32 * idx) + 160]:
                                                    require mem[_101 + 64] + mem[(32 * arg1.length) + (32 * idx) + 160] <= 0
                                                    if idx < mem[(32 * arg1.length) + 128]:
                                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                            idx = idx + 1
                                                            s = _101
                                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                            continue 
                                else:
                                    if mem[(32 * idx) + 128] < loans.length:
                                        mem[0] = 27
                                        if uint256(loans[mem[(32 * idx) + 128]].field_256):
                                            u = 0
                                            u = 0
                                            u = 0
                                            t = 0
                                            while t < 18:
                                                _188 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_188 len 192] = code.data[9411 len 192]
                                                if t:
                                                    if t != 1:
                                                        _212 = mem[64]
                                                        mem[64] = mem[64] + 192
                                                        mem[_212] = (10000 / uint256(loans[_120].field_256))^t
                                                        mem[_212 + 32] = 365^t
                                                        s = 1
                                                        while s <= t:
                                                            require s == s
                                                            s = s + 1
                                                            continue 
                                                        mem[_212 + 64] = 1
                                                        if (10000 / uint256(loans[_120].field_256))^t:
                                                            require (10000 / uint256(loans[_120].field_256))^t / (10000 / uint256(loans[_120].field_256))^t == 1
                                                            if (10000 / uint256(loans[_120].field_256))^t:
                                                                require 365^t * (10000 / uint256(loans[_120].field_256))^t / (10000 / uint256(loans[_120].field_256))^t == 365^t
                                                                mem[_212 + 96] = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                require 1 <= t
                                                                if not bool(t - 1):
                                                                    mem[_212 + 128] = 1
                                                                    mem[_212 + 160] = 1
                                                                    s = 2
                                                                    while s <= t:
                                                                        require 1 <= s
                                                                        require s - 1
                                                                        require (365 * s) - 365 / s - 1 == 365
                                                                        require 1 <= (365 * s) - 365
                                                                        if mem[_212 + 160]:
                                                                            require (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160]) / mem[_212 + 160] == (365 * s) - 366
                                                                            mem[_212 + 160] = (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160])
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_212 + 160] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                    if uint256(loans[_120].field_0):
                                                                        require mem[_212 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_212 + 160]
                                                                        require 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        require mem[_212 + 160] * uint256(loans[_120].field_0) / 365^t * (10000 / uint256(loans[_120].field_256))^t >= 0
                                                                        u = 1
                                                                        u = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        u = mem[_212 + 160]
                                                                        t = t + 1
                                                                        continue 
                                                                    else:
                                                                        require 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        require 0 / 365^t * (10000 / uint256(loans[_120].field_256))^t >= 0
                                                                        u = 1
                                                                        u = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        u = mem[_212 + 160]
                                                                        t = t + 1
                                                                        continue 
                                                                else:
                                                                    mem[_212 + 128] = 0
                                                                    mem[_212 + 160] = 1
                                                                    s = 2
                                                                    while s <= t:
                                                                        require 1 <= s
                                                                        require s - 1
                                                                        require (365 * s) - 365 / s - 1 == 365
                                                                        require 1 <= (365 * s) - 365
                                                                        if mem[_212 + 160]:
                                                                            require (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160]) / mem[_212 + 160] == (365 * s) - 366
                                                                            mem[_212 + 160] = (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160])
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_212 + 160] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                    if uint256(loans[_120].field_0):
                                                                        require mem[_212 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_212 + 160]
                                                                        require 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        require mem[_212 + 160] * uint256(loans[_120].field_0) / 365^t * (10000 / uint256(loans[_120].field_256))^t <= 0
                                                                        u = 0
                                                                        u = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        u = mem[_212 + 160]
                                                                        t = t + 1
                                                                        continue 
                                                                    else:
                                                                        require 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        require 0 / 365^t * (10000 / uint256(loans[_120].field_256))^t <= 0
                                                                        u = 0
                                                                        u = 365^t * (10000 / uint256(loans[_120].field_256))^t
                                                                        u = mem[_212 + 160]
                                                                        t = t + 1
                                                                        continue 
                                                            else:
                                                                require 1 <= t
                                                                if not bool(t - 1):
                                                                    mem[_212 + 160] = 1
                                                                    s = 2
                                                                    while s <= t:
                                                                        require 1 <= s
                                                                        require s - 1
                                                                        require (365 * s) - 365 / s - 1 == 365
                                                                        require 1 <= (365 * s) - 365
                                                                        if mem[_212 + 160]:
                                                                            require (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160]) / mem[_212 + 160] == (365 * s) - 366
                                                                            mem[_212 + 160] = (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160])
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_212 + 160] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                    require uint256(loans[_120].field_0)
                                                                    require mem[_212 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_212 + 160]
                                                                    revert
                                                                else:
                                                                    mem[_212 + 160] = 1
                                                                    s = 2
                                                                    while s <= t:
                                                                        require 1 <= s
                                                                        require s - 1
                                                                        require (365 * s) - 365 / s - 1 == 365
                                                                        require 1 <= (365 * s) - 365
                                                                        if mem[_212 + 160]:
                                                                            require (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160]) / mem[_212 + 160] == (365 * s) - 366
                                                                            mem[_212 + 160] = (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160])
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_212 + 160] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                    require uint256(loans[_120].field_0)
                                                                    require mem[_212 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_212 + 160]
                                                                    revert
                                                        else:
                                                            require 1 <= t
                                                            if not bool(t - 1):
                                                                mem[_212 + 160] = 1
                                                                s = 2
                                                                while s <= t:
                                                                    require 1 <= s
                                                                    require s - 1
                                                                    require (365 * s) - 365 / s - 1 == 365
                                                                    require 1 <= (365 * s) - 365
                                                                    if mem[_212 + 160]:
                                                                        require (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160]) / mem[_212 + 160] == (365 * s) - 366
                                                                        mem[_212 + 160] = (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160])
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        mem[_212 + 160] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                require uint256(loans[_120].field_0)
                                                                require mem[_212 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_212 + 160]
                                                                revert
                                                            else:
                                                                mem[_212 + 160] = 1
                                                                s = 2
                                                                while s <= t:
                                                                    require 1 <= s
                                                                    require s - 1
                                                                    require (365 * s) - 365 / s - 1 == 365
                                                                    require 1 <= (365 * s) - 365
                                                                    if mem[_212 + 160]:
                                                                        require (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160]) / mem[_212 + 160] == (365 * s) - 366
                                                                        mem[_212 + 160] = (-366 * mem[_212 + 160]) + (365 * s * mem[_212 + 160])
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        mem[_212 + 160] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                require uint256(loans[_120].field_0)
                                                                require mem[_212 + 160] * uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == mem[_212 + 160]
                                                                revert
                                                    else:
                                                        if 10000 / uint256(loans[_120].field_256):
                                                            require 365 * 10000 / uint256(loans[_120].field_256) / 10000 / uint256(loans[_120].field_256) == 365
                                                            if uint256(loans[_120].field_0):
                                                                require uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == 1
                                                                require 365 * 10000 / uint256(loans[_120].field_256)
                                                                require uint256(loans[_120].field_0) / 365 * 10000 / uint256(loans[_120].field_256) >= 0
                                                                u = 1
                                                                u = 365 * 10000 / uint256(loans[_120].field_256)
                                                                u = 1
                                                                t = t + 1
                                                                continue 
                                                            else:
                                                                require 365 * 10000 / uint256(loans[_120].field_256)
                                                                require 0 / 365 * 10000 / uint256(loans[_120].field_256) >= 0
                                                                u = 1
                                                                u = 365 * 10000 / uint256(loans[_120].field_256)
                                                                u = 1
                                                                t = t + 1
                                                                continue 
                                                        else:
                                                            require uint256(loans[_120].field_0)
                                                            require uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == 1
                                                            revert
                                                else:
                                                    if uint256(loans[_120].field_0):
                                                        require uint256(loans[_120].field_0) / uint256(loans[_120].field_0) == 1
                                                        require uint256(loans[_120].field_0) >= 0
                                                        u = 1
                                                        u = 1
                                                        u = 1
                                                        t = t + 1
                                                        continue 
                                                    else:
                                                        u = 1
                                                        u = 1
                                                        u = 1
                                                        t = t + 1
                                                        continue 
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                if mem[_101 + 64] + mem[(32 * arg1.length) + (32 * idx) + 160] >= mem[(32 * arg1.length) + (32 * idx) + 160]:
                                                    require mem[_101 + 64] + mem[(32 * arg1.length) + (32 * idx) + 160] <= 0
                                                    if idx < mem[(32 * arg1.length) + 128]:
                                                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                            idx = idx + 1
                                                            s = _101
                                                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                            continue 
        else:
            if idx - 1 < mem[96]:
                if idx < mem[96]:
                    require mem[(32 * idx) + 128] > mem[(32 * idx - 1) + 128]
                    if idx < mem[96]:
                        _109 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + 128] < loans.length:
                            mem[0] = 27
                            _112 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_112] = uint256(loans[mem[(32 * idx) + 128]].field_0)
                            mem[_112 + 32] = uint256(loans[_109].field_256)
                            mem[_112 + 64] = uint256(loans[_109].field_512)
                            mem[_112 + 96] = uint256(loans[_109].field_768)
                            mem[_112 + 128] = address(loans[_109].field_1024)
                            mem[_112 + 160] = address(loans[_109].field_1280)
                            mem[_112 + 192] = uint256(loans[_109].field_1536)
                            if idx < mem[(32 * arg1.length) + 128]:
                                require mem[(32 * arg1.length) + (32 * idx) + 160] > 0
                                require msg.sender == address(loans[_109].field_1280)
                                require 0 < uint256(loans[_109].field_0)
                                if idx < mem[96]:
                                    _129 = mem[(32 * idx) + 128]
                                    require mem[(32 * idx) + 128] < loans.length
                                    if uint256(loans[mem[(32 * idx) + 128]].field_1536) <= block.timestamp:
                                        if block.timestamp - uint256(loans[mem[(32 * idx) + 128]].field_1536) / 24 * 3600 >= 1:
                                            if mem[(32 * idx) + 128] < loans.length:
                                                mem[0] = 27
                                                if uint256(loans[mem[(32 * idx) + 128]].field_256):
                                                    u = 0
                                                    u = 0
                                                    u = 0
                                                    t = 0
                                                    while t < 18:
                                                        _191 = mem[64]
                                                        mem[64] = mem[64] + 192
                                                        mem[_191 len 192] = code.data[9411 len 192]
                                                        if t:
                                                            if t != 1:
                                                                _213 = mem[64]
                                                                mem[64] = mem[64] + 192
                                                                mem[_213] = (10000 / uint256(loans[_129].field_256))^t
                                                                mem[_213 + 32] = 365^t
                                                                s = 1
                                                                while s <= t:
                                                                    require s == s
                                                                    s = s + 1
                                                                    continue 
                                                                mem[_213 + 64] = 1
                                                                if (10000 / uint256(loans[_129].field_256))^t:
                                                                    require (10000 / uint256(loans[_129].field_256))^t / (10000 / uint256(loans[_129].field_256))^t == 1
                                                                    if (10000 / uint256(loans[_129].field_256))^t:
                                                                        require 365^t * (10000 / uint256(loans[_129].field_256))^t / (10000 / uint256(loans[_129].field_256))^t == 365^t
                                                                        mem[_213 + 96] = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                        require 1 <= t
                                                                        if not bool(t - 1):
                                                                            mem[_213 + 128] = 1
                                                                            mem[_213 + 160] = block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                            s = 2
                                                                            while s <= t:
                                                                                require 1 <= s
                                                                                if s - 1:
                                                                                    require (365 * s) - 365 / s - 1 == 365
                                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                                    if mem[_213 + 160]:
                                                                                        require (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]) / mem[_213 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600) - 365
                                                                                        mem[_213 + 160] = (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160])
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_213 + 160] = 0
                                                                                        s = s + 1
                                                                                        continue 
                                                                                else:
                                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= 0
                                                                                    if mem[_213 + 160]:
                                                                                        require -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160] / mem[_213 + 160] == -block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                                        mem[_213 + 160] = -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_213 + 160] = 0
                                                                                        s = s + 1
                                                                                        continue 
                                                                            if uint256(loans[_129].field_0):
                                                                                require mem[_213 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_213 + 160]
                                                                                require 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                require mem[_213 + 160] * uint256(loans[_129].field_0) / 365^t * (10000 / uint256(loans[_129].field_256))^t >= 0
                                                                                u = 1
                                                                                u = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                u = mem[_213 + 160]
                                                                                t = t + 1
                                                                                continue 
                                                                            else:
                                                                                require 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                require 0 / 365^t * (10000 / uint256(loans[_129].field_256))^t >= 0
                                                                                u = 1
                                                                                u = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                u = mem[_213 + 160]
                                                                                t = t + 1
                                                                                continue 
                                                                        else:
                                                                            mem[_213 + 128] = 0
                                                                            mem[_213 + 160] = block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                            s = 2
                                                                            while s <= t:
                                                                                require 1 <= s
                                                                                if s - 1:
                                                                                    require (365 * s) - 365 / s - 1 == 365
                                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                                    if mem[_213 + 160]:
                                                                                        require (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]) / mem[_213 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600) - 365
                                                                                        mem[_213 + 160] = (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160])
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_213 + 160] = 0
                                                                                        s = s + 1
                                                                                        continue 
                                                                                else:
                                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= 0
                                                                                    if mem[_213 + 160]:
                                                                                        require -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160] / mem[_213 + 160] == -block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                                        mem[_213 + 160] = -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_213 + 160] = 0
                                                                                        s = s + 1
                                                                                        continue 
                                                                            if uint256(loans[_129].field_0):
                                                                                require mem[_213 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_213 + 160]
                                                                                require 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                require mem[_213 + 160] * uint256(loans[_129].field_0) / 365^t * (10000 / uint256(loans[_129].field_256))^t <= 0
                                                                                u = 0
                                                                                u = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                u = mem[_213 + 160]
                                                                                t = t + 1
                                                                                continue 
                                                                            else:
                                                                                require 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                require 0 / 365^t * (10000 / uint256(loans[_129].field_256))^t <= 0
                                                                                u = 0
                                                                                u = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                u = mem[_213 + 160]
                                                                                t = t + 1
                                                                                continue 
                                                                    else:
                                                                        require 1 <= t
                                                                        if not bool(t - 1):
                                                                            mem[_213 + 160] = block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                            s = 2
                                                                            while s <= t:
                                                                                require 1 <= s
                                                                                if s - 1:
                                                                                    require (365 * s) - 365 / s - 1 == 365
                                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                                    if mem[_213 + 160]:
                                                                                        require (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]) / mem[_213 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600) - 365
                                                                                        mem[_213 + 160] = (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160])
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_213 + 160] = 0
                                                                                        s = s + 1
                                                                                        continue 
                                                                                else:
                                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= 0
                                                                                    if mem[_213 + 160]:
                                                                                        require -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160] / mem[_213 + 160] == -block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                                        mem[_213 + 160] = -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_213 + 160] = 0
                                                                                        s = s + 1
                                                                                        continue 
                                                                            require uint256(loans[_129].field_0)
                                                                            require mem[_213 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_213 + 160]
                                                                            revert
                                                                        else:
                                                                            mem[_213 + 160] = block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                            s = 2
                                                                            while s <= t:
                                                                                require 1 <= s
                                                                                if s - 1:
                                                                                    require (365 * s) - 365 / s - 1 == 365
                                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                                    if mem[_213 + 160]:
                                                                                        require (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]) / mem[_213 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600) - 365
                                                                                        mem[_213 + 160] = (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160])
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_213 + 160] = 0
                                                                                        s = s + 1
                                                                                        continue 
                                                                                else:
                                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= 0
                                                                                    if mem[_213 + 160]:
                                                                                        require -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160] / mem[_213 + 160] == -block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                                        mem[_213 + 160] = -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    else:
                                                                                        mem[_213 + 160] = 0
                                                                                        s = s + 1
                                                                                        continue 
                                                                            require uint256(loans[_129].field_0)
                                                                            require mem[_213 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_213 + 160]
                                                                            revert
                                                                else:
                                                                    require 1 <= t
                                                                    if not bool(t - 1):
                                                                        mem[_213 + 160] = block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                        s = 2
                                                                        while s <= t:
                                                                            require 1 <= s
                                                                            if s - 1:
                                                                                require (365 * s) - 365 / s - 1 == 365
                                                                                require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                                if mem[_213 + 160]:
                                                                                    require (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]) / mem[_213 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600) - 365
                                                                                    mem[_213 + 160] = (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160])
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_213 + 160] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                            else:
                                                                                require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= 0
                                                                                if mem[_213 + 160]:
                                                                                    require -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160] / mem[_213 + 160] == -block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                                    mem[_213 + 160] = -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_213 + 160] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                        require uint256(loans[_129].field_0)
                                                                        require mem[_213 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_213 + 160]
                                                                        revert
                                                                    else:
                                                                        mem[_213 + 160] = block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                        s = 2
                                                                        while s <= t:
                                                                            require 1 <= s
                                                                            if s - 1:
                                                                                require (365 * s) - 365 / s - 1 == 365
                                                                                require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= (365 * s) - 365
                                                                                if mem[_213 + 160]:
                                                                                    require (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]) / mem[_213 + 160] == (365 * s) + -(block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600) - 365
                                                                                    mem[_213 + 160] = (-365 * mem[_213 + 160]) + (365 * s * mem[_213 + 160]) - (block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160])
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_213 + 160] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                            else:
                                                                                require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 <= 0
                                                                                if mem[_213 + 160]:
                                                                                    require -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160] / mem[_213 + 160] == -block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                                    mem[_213 + 160] = -1 * block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * mem[_213 + 160]
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_213 + 160] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                        require uint256(loans[_129].field_0)
                                                                        require mem[_213 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_213 + 160]
                                                                        revert
                                                            else:
                                                                if 10000 / uint256(loans[_129].field_256):
                                                                    require 365 * 10000 / uint256(loans[_129].field_256) / 10000 / uint256(loans[_129].field_256) == 365
                                                                    if uint256(loans[_129].field_0):
                                                                        require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                        require 365 * 10000 / uint256(loans[_129].field_256)
                                                                        require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * uint256(loans[_129].field_0) / 365 * 10000 / uint256(loans[_129].field_256) >= 0
                                                                        u = 1
                                                                        u = 365 * 10000 / uint256(loans[_129].field_256)
                                                                        u = block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                        t = t + 1
                                                                        continue 
                                                                    else:
                                                                        require 365 * 10000 / uint256(loans[_129].field_256)
                                                                        require 0 / 365 * 10000 / uint256(loans[_129].field_256) >= 0
                                                                        u = 1
                                                                        u = 365 * 10000 / uint256(loans[_129].field_256)
                                                                        u = block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                        t = t + 1
                                                                        continue 
                                                                else:
                                                                    require uint256(loans[_129].field_0)
                                                                    require block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600 * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == block.timestamp - uint256(loans[_129].field_1536) / 24 * 3600
                                                                    revert
                                                        else:
                                                            if uint256(loans[_129].field_0):
                                                                require uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == 1
                                                                require uint256(loans[_129].field_0) >= 0
                                                                u = 1
                                                                u = 1
                                                                u = 1
                                                                t = t + 1
                                                                continue 
                                                            else:
                                                                u = 1
                                                                u = 1
                                                                u = 1
                                                                t = t + 1
                                                                continue 
                                                    if idx < mem[(32 * arg1.length) + 128]:
                                                        if mem[_112 + 64] + mem[(32 * arg1.length) + (32 * idx) + 160] >= mem[(32 * arg1.length) + (32 * idx) + 160]:
                                                            require mem[_112 + 64] + mem[(32 * arg1.length) + (32 * idx) + 160] <= 0
                                                            if idx < mem[(32 * arg1.length) + 128]:
                                                                if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                                    idx = idx + 1
                                                                    s = _112
                                                                    s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                                    continue 
                                        else:
                                            if mem[(32 * idx) + 128] < loans.length:
                                                mem[0] = 27
                                                if uint256(loans[mem[(32 * idx) + 128]].field_256):
                                                    u = 0
                                                    u = 0
                                                    u = 0
                                                    t = 0
                                                    while t < 18:
                                                        _194 = mem[64]
                                                        mem[64] = mem[64] + 192
                                                        mem[_194 len 192] = code.data[9411 len 192]
                                                        if t:
                                                            if t != 1:
                                                                _214 = mem[64]
                                                                mem[64] = mem[64] + 192
                                                                mem[_214] = (10000 / uint256(loans[_129].field_256))^t
                                                                mem[_214 + 32] = 365^t
                                                                s = 1
                                                                while s <= t:
                                                                    require s == s
                                                                    s = s + 1
                                                                    continue 
                                                                mem[_214 + 64] = 1
                                                                if (10000 / uint256(loans[_129].field_256))^t:
                                                                    require (10000 / uint256(loans[_129].field_256))^t / (10000 / uint256(loans[_129].field_256))^t == 1
                                                                    if (10000 / uint256(loans[_129].field_256))^t:
                                                                        require 365^t * (10000 / uint256(loans[_129].field_256))^t / (10000 / uint256(loans[_129].field_256))^t == 365^t
                                                                        mem[_214 + 96] = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                        require 1 <= t
                                                                        if not bool(t - 1):
                                                                            mem[_214 + 128] = 1
                                                                            mem[_214 + 160] = 1
                                                                            s = 2
                                                                            while s <= t:
                                                                                require 1 <= s
                                                                                require s - 1
                                                                                require (365 * s) - 365 / s - 1 == 365
                                                                                require 1 <= (365 * s) - 365
                                                                                if mem[_214 + 160]:
                                                                                    require (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160]) / mem[_214 + 160] == (365 * s) - 366
                                                                                    mem[_214 + 160] = (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160])
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_214 + 160] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                            if uint256(loans[_129].field_0):
                                                                                require mem[_214 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_214 + 160]
                                                                                require 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                require mem[_214 + 160] * uint256(loans[_129].field_0) / 365^t * (10000 / uint256(loans[_129].field_256))^t >= 0
                                                                                u = 1
                                                                                u = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                u = mem[_214 + 160]
                                                                                t = t + 1
                                                                                continue 
                                                                            else:
                                                                                require 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                require 0 / 365^t * (10000 / uint256(loans[_129].field_256))^t >= 0
                                                                                u = 1
                                                                                u = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                u = mem[_214 + 160]
                                                                                t = t + 1
                                                                                continue 
                                                                        else:
                                                                            mem[_214 + 128] = 0
                                                                            mem[_214 + 160] = 1
                                                                            s = 2
                                                                            while s <= t:
                                                                                require 1 <= s
                                                                                require s - 1
                                                                                require (365 * s) - 365 / s - 1 == 365
                                                                                require 1 <= (365 * s) - 365
                                                                                if mem[_214 + 160]:
                                                                                    require (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160]) / mem[_214 + 160] == (365 * s) - 366
                                                                                    mem[_214 + 160] = (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160])
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_214 + 160] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                            if uint256(loans[_129].field_0):
                                                                                require mem[_214 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_214 + 160]
                                                                                require 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                require mem[_214 + 160] * uint256(loans[_129].field_0) / 365^t * (10000 / uint256(loans[_129].field_256))^t <= 0
                                                                                u = 0
                                                                                u = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                u = mem[_214 + 160]
                                                                                t = t + 1
                                                                                continue 
                                                                            else:
                                                                                require 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                require 0 / 365^t * (10000 / uint256(loans[_129].field_256))^t <= 0
                                                                                u = 0
                                                                                u = 365^t * (10000 / uint256(loans[_129].field_256))^t
                                                                                u = mem[_214 + 160]
                                                                                t = t + 1
                                                                                continue 
                                                                    else:
                                                                        require 1 <= t
                                                                        if not bool(t - 1):
                                                                            mem[_214 + 160] = 1
                                                                            s = 2
                                                                            while s <= t:
                                                                                require 1 <= s
                                                                                require s - 1
                                                                                require (365 * s) - 365 / s - 1 == 365
                                                                                require 1 <= (365 * s) - 365
                                                                                if mem[_214 + 160]:
                                                                                    require (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160]) / mem[_214 + 160] == (365 * s) - 366
                                                                                    mem[_214 + 160] = (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160])
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_214 + 160] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                            require uint256(loans[_129].field_0)
                                                                            require mem[_214 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_214 + 160]
                                                                            revert
                                                                        else:
                                                                            mem[_214 + 160] = 1
                                                                            s = 2
                                                                            while s <= t:
                                                                                require 1 <= s
                                                                                require s - 1
                                                                                require (365 * s) - 365 / s - 1 == 365
                                                                                require 1 <= (365 * s) - 365
                                                                                if mem[_214 + 160]:
                                                                                    require (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160]) / mem[_214 + 160] == (365 * s) - 366
                                                                                    mem[_214 + 160] = (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160])
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_214 + 160] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                            require uint256(loans[_129].field_0)
                                                                            require mem[_214 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_214 + 160]
                                                                            revert
                                                                else:
                                                                    require 1 <= t
                                                                    if not bool(t - 1):
                                                                        mem[_214 + 160] = 1
                                                                        s = 2
                                                                        while s <= t:
                                                                            require 1 <= s
                                                                            require s - 1
                                                                            require (365 * s) - 365 / s - 1 == 365
                                                                            require 1 <= (365 * s) - 365
                                                                            if mem[_214 + 160]:
                                                                                require (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160]) / mem[_214 + 160] == (365 * s) - 366
                                                                                mem[_214 + 160] = (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160])
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_214 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                        require uint256(loans[_129].field_0)
                                                                        require mem[_214 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_214 + 160]
                                                                        revert
                                                                    else:
                                                                        mem[_214 + 160] = 1
                                                                        s = 2
                                                                        while s <= t:
                                                                            require 1 <= s
                                                                            require s - 1
                                                                            require (365 * s) - 365 / s - 1 == 365
                                                                            require 1 <= (365 * s) - 365
                                                                            if mem[_214 + 160]:
                                                                                require (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160]) / mem[_214 + 160] == (365 * s) - 366
                                                                                mem[_214 + 160] = (-366 * mem[_214 + 160]) + (365 * s * mem[_214 + 160])
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_214 + 160] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                        require uint256(loans[_129].field_0)
                                                                        require mem[_214 + 160] * uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == mem[_214 + 160]
                                                                        revert
                                                            else:
                                                                if 10000 / uint256(loans[_129].field_256):
                                                                    require 365 * 10000 / uint256(loans[_129].field_256) / 10000 / uint256(loans[_129].field_256) == 365
                                                                    if uint256(loans[_129].field_0):
                                                                        require uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == 1
                                                                        require 365 * 10000 / uint256(loans[_129].field_256)
                                                                        require uint256(loans[_129].field_0) / 365 * 10000 / uint256(loans[_129].field_256) >= 0
                                                                        u = 1
                                                                        u = 365 * 10000 / uint256(loans[_129].field_256)
                                                                        u = 1
                                                                        t = t + 1
                                                                        continue 
                                                                    else:
                                                                        require 365 * 10000 / uint256(loans[_129].field_256)
                                                                        require 0 / 365 * 10000 / uint256(loans[_129].field_256) >= 0
                                                                        u = 1
                                                                        u = 365 * 10000 / uint256(loans[_129].field_256)
                                                                        u = 1
                                                                        t = t + 1
                                                                        continue 
                                                                else:
                                                                    require uint256(loans[_129].field_0)
                                                                    require uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == 1
                                                                    revert
                                                        else:
                                                            if uint256(loans[_129].field_0):
                                                                require uint256(loans[_129].field_0) / uint256(loans[_129].field_0) == 1
                                                                require uint256(loans[_129].field_0) >= 0
                                                                u = 1
                                                                u = 1
                                                                u = 1
                                                                t = t + 1
                                                                continue 
                                                            else:
                                                                u = 1
                                                                u = 1
                                                                u = 1
                                                                t = t + 1
                                                                continue 
                                                    if idx < mem[(32 * arg1.length) + 128]:
                                                        if mem[_112 + 64] + mem[(32 * arg1.length) + (32 * idx) + 160] >= mem[(32 * arg1.length) + (32 * idx) + 160]:
                                                            require mem[_112 + 64] + mem[(32 * arg1.length) + (32 * idx) + 160] <= 0
                                                            if idx < mem[(32 * arg1.length) + 128]:
                                                                if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                                                                    idx = idx + 1
                                                                    s = _112
                                                                    s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                                                                    continue 
        revert
    require s > 0
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x17bfdd57 with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if loanTokenAddress == address(ext_call.return_data[0]):
        require s == msg.value
        _124 = mem[64]
        mem[64] = mem[64] + (32 * arg1.length) + 32
        mem[_124] = arg1.length
        mem[_124 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        _125 = mem[64]
        mem[64] = (32 * arg2.length) + mem[64] + 32
        mem[_125] = arg2.length
        mem[_125 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        _130 = mem[64]
        mem[64] = mem[64] + 224
        mem[_130] = 0
        mem[_130 + 32] = 0
        mem[_130 + 64] = 0
        mem[_130 + 96] = 0
        mem[_130 + 128] = 0
        mem[_130 + 160] = 0
        mem[_130 + 192] = 0
        idx = 0
        s = 0
        s = _130
        while idx < arg2.length:
            require idx < mem[_124]
            _580 = mem[_124 + (32 * idx) + 32]
            require mem[_124 + (32 * idx) + 32] < loans.length
            mem[0] = 27
            _597 = mem[64]
            mem[64] = mem[64] + 224
            mem[_597] = uint256(loans[_580].field_0)
            mem[_597 + 32] = uint256(loans[_580].field_256)
            mem[_597 + 64] = uint256(loans[_580].field_512)
            mem[_597 + 96] = uint256(loans[_580].field_768)
            mem[_597 + 128] = address(loans[_580].field_1024)
            mem[_597 + 160] = address(loans[_580].field_1280)
            mem[_597 + 192] = uint256(loans[_580].field_1536)
            require idx < mem[_124]
            _604 = mem[(32 * idx) + _124 + 32]
            require mem[(32 * idx) + _124 + 32] < loans.length
            require uint256(loans[mem[(32 * idx) + _124 + 32]].field_1536) <= block.timestamp
            require mem[(32 * idx) + _124 + 32] < loans.length
            mem[0] = 27
            require uint256(loans[mem[(32 * idx) + _124 + 32]].field_256)
            if block.timestamp - uint256(loans[mem[(32 * idx) + _124 + 32]].field_1536) / 24 * 3600 >= 1:
                t = 0
                t = 0
                t = 0
                s = 0
                while s < 18:
                    _790 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_790 len 192] = code.data[9411 len 192]
                    if s:
                        if s != 1:
                            _803 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_803] = (10000 / uint256(loans[_604].field_256))^s
                            mem[_803 + 32] = 365^s
                            t = 1
                            while t <= s:
                                require t == t
                                t = t + 1
                                continue 
                            mem[_803 + 64] = 1
                            if (10000 / uint256(loans[_604].field_256))^s:
                                require (10000 / uint256(loans[_604].field_256))^s / (10000 / uint256(loans[_604].field_256))^s == 1
                                if (10000 / uint256(loans[_604].field_256))^s:
                                    require 365^s * (10000 / uint256(loans[_604].field_256))^s / (10000 / uint256(loans[_604].field_256))^s == 365^s
                                    mem[_803 + 96] = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                    require 1 <= s
                                    if not bool(s - 1):
                                        mem[_803 + 128] = 1
                                        mem[_803 + 160] = block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_803 + 160]:
                                                    require (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]) / mem[_803 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600) - 365
                                                    mem[_803 + 160] = (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_803 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= 0
                                                if mem[_803 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160] / mem[_803 + 160] == -block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                                    mem[_803 + 160] = -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_803 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        if uint256(loans[_604].field_0):
                                            require mem[_803 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_803 + 160]
                                            require 365^s * (10000 / uint256(loans[_604].field_256))^s
                                            require mem[_803 + 160] * uint256(loans[_604].field_0) / 365^s * (10000 / uint256(loans[_604].field_256))^s >= 0
                                            t = 1
                                            t = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                            t = mem[_803 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            require 365^s * (10000 / uint256(loans[_604].field_256))^s
                                            require 0 / 365^s * (10000 / uint256(loans[_604].field_256))^s >= 0
                                            t = 1
                                            t = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                            t = mem[_803 + 160]
                                            s = s + 1
                                            continue 
                                    else:
                                        mem[_803 + 128] = 0
                                        mem[_803 + 160] = block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_803 + 160]:
                                                    require (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]) / mem[_803 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600) - 365
                                                    mem[_803 + 160] = (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_803 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= 0
                                                if mem[_803 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160] / mem[_803 + 160] == -block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                                    mem[_803 + 160] = -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_803 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        if uint256(loans[_604].field_0):
                                            require mem[_803 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_803 + 160]
                                            require 365^s * (10000 / uint256(loans[_604].field_256))^s
                                            require mem[_803 + 160] * uint256(loans[_604].field_0) / 365^s * (10000 / uint256(loans[_604].field_256))^s <= 0
                                            t = 0
                                            t = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                            t = mem[_803 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            require 365^s * (10000 / uint256(loans[_604].field_256))^s
                                            require 0 / 365^s * (10000 / uint256(loans[_604].field_256))^s <= 0
                                            t = 0
                                            t = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                            t = mem[_803 + 160]
                                            s = s + 1
                                            continue 
                                else:
                                    require 1 <= s
                                    if not bool(s - 1):
                                        mem[_803 + 160] = block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_803 + 160]:
                                                    require (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]) / mem[_803 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600) - 365
                                                    mem[_803 + 160] = (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_803 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= 0
                                                if mem[_803 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160] / mem[_803 + 160] == -block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                                    mem[_803 + 160] = -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_803 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        require uint256(loans[_604].field_0)
                                        require mem[_803 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_803 + 160]
                                        revert
                                    else:
                                        mem[_803 + 160] = block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_803 + 160]:
                                                    require (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]) / mem[_803 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600) - 365
                                                    mem[_803 + 160] = (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_803 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= 0
                                                if mem[_803 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160] / mem[_803 + 160] == -block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                                    mem[_803 + 160] = -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_803 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        require uint256(loans[_604].field_0)
                                        require mem[_803 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_803 + 160]
                                        revert
                            else:
                                require 1 <= s
                                if not bool(s - 1):
                                    mem[_803 + 160] = block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        if t - 1:
                                            require (365 * t) - 365 / t - 1 == 365
                                            require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= (365 * t) - 365
                                            if mem[_803 + 160]:
                                                require (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]) / mem[_803 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600) - 365
                                                mem[_803 + 160] = (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160])
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_803 + 160] = 0
                                                t = t + 1
                                                continue 
                                        else:
                                            require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= 0
                                            if mem[_803 + 160]:
                                                require -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160] / mem[_803 + 160] == -block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                                mem[_803 + 160] = -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_803 + 160] = 0
                                                t = t + 1
                                                continue 
                                    require uint256(loans[_604].field_0)
                                    require mem[_803 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_803 + 160]
                                    revert
                                else:
                                    mem[_803 + 160] = block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        if t - 1:
                                            require (365 * t) - 365 / t - 1 == 365
                                            require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= (365 * t) - 365
                                            if mem[_803 + 160]:
                                                require (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]) / mem[_803 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600) - 365
                                                mem[_803 + 160] = (-365 * mem[_803 + 160]) + (365 * t * mem[_803 + 160]) - (block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160])
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_803 + 160] = 0
                                                t = t + 1
                                                continue 
                                        else:
                                            require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 <= 0
                                            if mem[_803 + 160]:
                                                require -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160] / mem[_803 + 160] == -block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                                mem[_803 + 160] = -1 * block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * mem[_803 + 160]
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_803 + 160] = 0
                                                t = t + 1
                                                continue 
                                    require uint256(loans[_604].field_0)
                                    require mem[_803 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_803 + 160]
                                    revert
                        else:
                            if 10000 / uint256(loans[_604].field_256):
                                require 365 * 10000 / uint256(loans[_604].field_256) / 10000 / uint256(loans[_604].field_256) == 365
                                if uint256(loans[_604].field_0):
                                    require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                    require 365 * 10000 / uint256(loans[_604].field_256)
                                    require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * uint256(loans[_604].field_0) / 365 * 10000 / uint256(loans[_604].field_256) >= 0
                                    t = 1
                                    t = 365 * 10000 / uint256(loans[_604].field_256)
                                    t = block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                    s = s + 1
                                    continue 
                                else:
                                    require 365 * 10000 / uint256(loans[_604].field_256)
                                    require 0 / 365 * 10000 / uint256(loans[_604].field_256) >= 0
                                    t = 1
                                    t = 365 * 10000 / uint256(loans[_604].field_256)
                                    t = block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                    s = s + 1
                                    continue 
                            else:
                                require uint256(loans[_604].field_0)
                                require block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600 * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == block.timestamp - uint256(loans[_604].field_1536) / 24 * 3600
                                revert
                    else:
                        if uint256(loans[_604].field_0):
                            require uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == 1
                            require uint256(loans[_604].field_0) >= 0
                            t = 1
                            t = 1
                            t = 1
                            s = s + 1
                            continue 
                        else:
                            t = 1
                            t = 1
                            t = 1
                            s = s + 1
                            continue 
                require idx < mem[_125]
                _797 = mem[_125 + (32 * idx) + 32]
                _798 = mem[_597 + 64]
                require mem[_125 + (32 * idx) + 32] + mem[_597 + 64] >= mem[_597 + 64]
                require idx < mem[_124]
                _811 = mem[(32 * idx) + _124 + 32]
                require mem[(32 * idx) + _124 + 32] < loans.length
                require uint256(loans[mem[(32 * idx) + _124 + 32]].field_512) <= mem[_125 + (32 * idx) + 32] + mem[_597 + 64]
                require mem[(32 * idx) + _124 + 32] < loans.length
                uint256(loans[mem[(32 * idx) + _124 + 32]].field_512) = mem[_125 + (32 * idx) + 32] + mem[_597 + 64]
                mem[0] = 27
                mem[mem[64] + 4] = address(loans[mem[(32 * idx) + _124 + 32]].field_1280)
                mem[mem[64] + 36] = _797 + _798 - uint256(loans[_811].field_512)
                mem[mem[64] + 68] = _811
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xee1e5a9d with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _797 + _798 - uint256(loans[_811].field_512), _811
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if not _797 + _798:
                    require idx < mem[_124]
                    require mem[_124 + (32 * idx) + 32] < loans.length
                    mem[0] = 27
                    uint256(loans[mem[_124 + (32 * idx) + 32]].field_0) = 0
                    if mem[_597 + 140 len 20] == address(ext_call.return_data[0]):
                        call msg.sender with:
                           value mem[_597 + 96] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x35163b43 with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[0])
                        _1004 = mem[_597 + 96]
                        _1005 = mem[64]
                        mem[mem[64] + 36] = mem[_597 + 140 len 20]
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _1004
                        _1006 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_1006 + 32] = 0xd1660f9900000000000000000000000000000000000000000000000000000000 or mem[_1006 + 36 len 28]
                        _1009 = mem[_1006]
                        s = 0
                        while s < _1009:
                            mem[s + _1005 + 132] = mem[s + _1006 + 32]
                            s = s + 32
                            continue 
                        if not _1009 % 32:
                            delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1009 + _1005 + -mem[64] + 128]
                        else:
                            mem[floor32(_1009) + _1005 + 132] = mem[floor32(_1009) + _1005 + -(_1009 % 32) + 164 len _1009 % 32]
                            delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1009) + _1005 + -mem[64] + 160]
                        if not delegate.return_code:
                            revert with 0, 'safeTransfer() failed.'
                idx = idx + 1
                s = _797 + _798
                s = _597
                continue 
            t = 0
            t = 0
            t = 0
            s = 0
            while s < 18:
                _792 = mem[64]
                mem[64] = mem[64] + 192
                mem[_792 len 192] = code.data[9411 len 192]
                if s:
                    if s != 1:
                        _804 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_804] = (10000 / uint256(loans[_604].field_256))^s
                        mem[_804 + 32] = 365^s
                        t = 1
                        while t <= s:
                            require t == t
                            t = t + 1
                            continue 
                        mem[_804 + 64] = 1
                        if (10000 / uint256(loans[_604].field_256))^s:
                            require (10000 / uint256(loans[_604].field_256))^s / (10000 / uint256(loans[_604].field_256))^s == 1
                            if (10000 / uint256(loans[_604].field_256))^s:
                                require 365^s * (10000 / uint256(loans[_604].field_256))^s / (10000 / uint256(loans[_604].field_256))^s == 365^s
                                mem[_804 + 96] = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                require 1 <= s
                                if not bool(s - 1):
                                    mem[_804 + 128] = 1
                                    mem[_804 + 160] = 1
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        require t - 1
                                        require (365 * t) - 365 / t - 1 == 365
                                        require 1 <= (365 * t) - 365
                                        if mem[_804 + 160]:
                                            require (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160]) / mem[_804 + 160] == (365 * t) - 366
                                            mem[_804 + 160] = (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160])
                                            t = t + 1
                                            continue 
                                        else:
                                            mem[_804 + 160] = 0
                                            t = t + 1
                                            continue 
                                    if uint256(loans[_604].field_0):
                                        require mem[_804 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_804 + 160]
                                        require 365^s * (10000 / uint256(loans[_604].field_256))^s
                                        require mem[_804 + 160] * uint256(loans[_604].field_0) / 365^s * (10000 / uint256(loans[_604].field_256))^s >= 0
                                        t = 1
                                        t = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                        t = mem[_804 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        require 365^s * (10000 / uint256(loans[_604].field_256))^s
                                        require 0 / 365^s * (10000 / uint256(loans[_604].field_256))^s >= 0
                                        t = 1
                                        t = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                        t = mem[_804 + 160]
                                        s = s + 1
                                        continue 
                                else:
                                    mem[_804 + 128] = 0
                                    mem[_804 + 160] = 1
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        require t - 1
                                        require (365 * t) - 365 / t - 1 == 365
                                        require 1 <= (365 * t) - 365
                                        if mem[_804 + 160]:
                                            require (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160]) / mem[_804 + 160] == (365 * t) - 366
                                            mem[_804 + 160] = (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160])
                                            t = t + 1
                                            continue 
                                        else:
                                            mem[_804 + 160] = 0
                                            t = t + 1
                                            continue 
                                    if uint256(loans[_604].field_0):
                                        require mem[_804 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_804 + 160]
                                        require 365^s * (10000 / uint256(loans[_604].field_256))^s
                                        require mem[_804 + 160] * uint256(loans[_604].field_0) / 365^s * (10000 / uint256(loans[_604].field_256))^s <= 0
                                        t = 0
                                        t = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                        t = mem[_804 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        require 365^s * (10000 / uint256(loans[_604].field_256))^s
                                        require 0 / 365^s * (10000 / uint256(loans[_604].field_256))^s <= 0
                                        t = 0
                                        t = 365^s * (10000 / uint256(loans[_604].field_256))^s
                                        t = mem[_804 + 160]
                                        s = s + 1
                                        continue 
                            else:
                                require 1 <= s
                                if not bool(s - 1):
                                    mem[_804 + 160] = 1
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        require t - 1
                                        require (365 * t) - 365 / t - 1 == 365
                                        require 1 <= (365 * t) - 365
                                        if mem[_804 + 160]:
                                            require (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160]) / mem[_804 + 160] == (365 * t) - 366
                                            mem[_804 + 160] = (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160])
                                            t = t + 1
                                            continue 
                                        else:
                                            mem[_804 + 160] = 0
                                            t = t + 1
                                            continue 
                                    require uint256(loans[_604].field_0)
                                    require mem[_804 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_804 + 160]
                                    revert
                                else:
                                    mem[_804 + 160] = 1
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        require t - 1
                                        require (365 * t) - 365 / t - 1 == 365
                                        require 1 <= (365 * t) - 365
                                        if mem[_804 + 160]:
                                            require (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160]) / mem[_804 + 160] == (365 * t) - 366
                                            mem[_804 + 160] = (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160])
                                            t = t + 1
                                            continue 
                                        else:
                                            mem[_804 + 160] = 0
                                            t = t + 1
                                            continue 
                                    require uint256(loans[_604].field_0)
                                    require mem[_804 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_804 + 160]
                                    revert
                        else:
                            require 1 <= s
                            if not bool(s - 1):
                                mem[_804 + 160] = 1
                                t = 2
                                while t <= s:
                                    require 1 <= t
                                    require t - 1
                                    require (365 * t) - 365 / t - 1 == 365
                                    require 1 <= (365 * t) - 365
                                    if mem[_804 + 160]:
                                        require (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160]) / mem[_804 + 160] == (365 * t) - 366
                                        mem[_804 + 160] = (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160])
                                        t = t + 1
                                        continue 
                                    else:
                                        mem[_804 + 160] = 0
                                        t = t + 1
                                        continue 
                                require uint256(loans[_604].field_0)
                                require mem[_804 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_804 + 160]
                                revert
                            else:
                                mem[_804 + 160] = 1
                                t = 2
                                while t <= s:
                                    require 1 <= t
                                    require t - 1
                                    require (365 * t) - 365 / t - 1 == 365
                                    require 1 <= (365 * t) - 365
                                    if mem[_804 + 160]:
                                        require (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160]) / mem[_804 + 160] == (365 * t) - 366
                                        mem[_804 + 160] = (-366 * mem[_804 + 160]) + (365 * t * mem[_804 + 160])
                                        t = t + 1
                                        continue 
                                    else:
                                        mem[_804 + 160] = 0
                                        t = t + 1
                                        continue 
                                require uint256(loans[_604].field_0)
                                require mem[_804 + 160] * uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == mem[_804 + 160]
                                revert
                    else:
                        if 10000 / uint256(loans[_604].field_256):
                            require 365 * 10000 / uint256(loans[_604].field_256) / 10000 / uint256(loans[_604].field_256) == 365
                            if uint256(loans[_604].field_0):
                                require uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == 1
                                require 365 * 10000 / uint256(loans[_604].field_256)
                                require uint256(loans[_604].field_0) / 365 * 10000 / uint256(loans[_604].field_256) >= 0
                                t = 1
                                t = 365 * 10000 / uint256(loans[_604].field_256)
                                t = 1
                                s = s + 1
                                continue 
                            else:
                                require 365 * 10000 / uint256(loans[_604].field_256)
                                require 0 / 365 * 10000 / uint256(loans[_604].field_256) >= 0
                                t = 1
                                t = 365 * 10000 / uint256(loans[_604].field_256)
                                t = 1
                                s = s + 1
                                continue 
                        else:
                            require uint256(loans[_604].field_0)
                            require uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == 1
                            revert
                else:
                    if uint256(loans[_604].field_0):
                        require uint256(loans[_604].field_0) / uint256(loans[_604].field_0) == 1
                        require uint256(loans[_604].field_0) >= 0
                        t = 1
                        t = 1
                        t = 1
                        s = s + 1
                        continue 
                    else:
                        t = 1
                        t = 1
                        t = 1
                        s = s + 1
                        continue 
            require idx < mem[_125]
            _799 = mem[_125 + (32 * idx) + 32]
            _800 = mem[_597 + 64]
            require mem[_125 + (32 * idx) + 32] + mem[_597 + 64] >= mem[_597 + 64]
            require idx < mem[_124]
            _812 = mem[(32 * idx) + _124 + 32]
            require mem[(32 * idx) + _124 + 32] < loans.length
            require uint256(loans[mem[(32 * idx) + _124 + 32]].field_512) <= mem[_125 + (32 * idx) + 32] + mem[_597 + 64]
            require mem[(32 * idx) + _124 + 32] < loans.length
            uint256(loans[mem[(32 * idx) + _124 + 32]].field_512) = mem[_125 + (32 * idx) + 32] + mem[_597 + 64]
            mem[0] = 27
            mem[mem[64] + 4] = address(loans[mem[(32 * idx) + _124 + 32]].field_1280)
            mem[mem[64] + 36] = _799 + _800 - uint256(loans[_812].field_512)
            mem[mem[64] + 68] = _812
            require ext_code.size(sub_9ff78c30Address)
            call sub_9ff78c30Address.0xee1e5a9d with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _799 + _800 - uint256(loans[_812].field_512), _812
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not _799 + _800:
                require idx < mem[_124]
                require mem[_124 + (32 * idx) + 32] < loans.length
                mem[0] = 27
                uint256(loans[mem[_124 + (32 * idx) + 32]].field_0) = 0
                if mem[_597 + 140 len 20] == address(ext_call.return_data[0]):
                    call msg.sender with:
                       value mem[_597 + 96] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x35163b43 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[0])
                    _1017 = mem[_597 + 96]
                    _1018 = mem[64]
                    mem[mem[64] + 36] = mem[_597 + 140 len 20]
                    mem[mem[64] + 68] = msg.sender
                    mem[mem[64] + 100] = _1017
                    _1019 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_1019 + 32] = 0xd1660f9900000000000000000000000000000000000000000000000000000000 or mem[_1019 + 36 len 28]
                    _1022 = mem[_1019]
                    s = 0
                    while s < _1022:
                        mem[s + _1018 + 132] = mem[s + _1019 + 32]
                        s = s + 32
                        continue 
                    if not _1022 % 32:
                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1022 + _1018 + -mem[64] + 128]
                    else:
                        mem[floor32(_1022) + _1018 + 132] = mem[floor32(_1022) + _1018 + -(_1022 % 32) + 164 len _1022 % 32]
                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_1022) + _1018 + -mem[64] + 160]
                    if not delegate.return_code:
                        revert with 0, 'safeTransfer() failed.'
            idx = idx + 1
            s = _799 + _800
            s = _597
            continue 
    else:
        if msg.value:
            revert with 0, 'Please do not send ETH in that scenario'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = loanTokenAddress
        mem[mem[64] + 68] = s
        require ext_code.size(tokenManagerAddress)
        call tokenManagerAddress.0xe53719cf with:
             gas gas_remaining wei
            args msg.sender, loanTokenAddress, s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        _132 = mem[64]
        mem[64] = mem[64] + (32 * arg1.length) + 32
        mem[_132] = arg1.length
        mem[_132 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        _133 = mem[64]
        mem[64] = (32 * arg2.length) + mem[64] + 32
        mem[_133] = arg2.length
        mem[_133 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        _136 = mem[64]
        mem[64] = mem[64] + 224
        mem[_136] = 0
        mem[_136 + 32] = 0
        mem[_136 + 64] = 0
        mem[_136 + 96] = 0
        mem[_136 + 128] = 0
        mem[_136 + 160] = 0
        mem[_136 + 192] = 0
        idx = 0
        s = 0
        s = _136
        while idx < arg2.length:
            require idx < mem[_132]
            _579 = mem[_132 + (32 * idx) + 32]
            require mem[_132 + (32 * idx) + 32] < loans.length
            mem[0] = 27
            _592 = mem[64]
            mem[64] = mem[64] + 224
            mem[_592] = uint256(loans[_579].field_0)
            mem[_592 + 32] = uint256(loans[_579].field_256)
            mem[_592 + 64] = uint256(loans[_579].field_512)
            mem[_592 + 96] = uint256(loans[_579].field_768)
            mem[_592 + 128] = address(loans[_579].field_1024)
            mem[_592 + 160] = address(loans[_579].field_1280)
            mem[_592 + 192] = uint256(loans[_579].field_1536)
            require idx < mem[_132]
            _603 = mem[(32 * idx) + _132 + 32]
            require mem[(32 * idx) + _132 + 32] < loans.length
            require uint256(loans[mem[(32 * idx) + _132 + 32]].field_1536) <= block.timestamp
            require mem[(32 * idx) + _132 + 32] < loans.length
            mem[0] = 27
            require uint256(loans[mem[(32 * idx) + _132 + 32]].field_256)
            if block.timestamp - uint256(loans[mem[(32 * idx) + _132 + 32]].field_1536) / 24 * 3600 >= 1:
                t = 0
                t = 0
                t = 0
                s = 0
                while s < 18:
                    _786 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_786 len 192] = code.data[9411 len 192]
                    if s:
                        if s != 1:
                            _801 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_801] = (10000 / uint256(loans[_603].field_256))^s
                            mem[_801 + 32] = 365^s
                            t = 1
                            while t <= s:
                                require t == t
                                t = t + 1
                                continue 
                            mem[_801 + 64] = 1
                            if (10000 / uint256(loans[_603].field_256))^s:
                                require (10000 / uint256(loans[_603].field_256))^s / (10000 / uint256(loans[_603].field_256))^s == 1
                                if (10000 / uint256(loans[_603].field_256))^s:
                                    require 365^s * (10000 / uint256(loans[_603].field_256))^s / (10000 / uint256(loans[_603].field_256))^s == 365^s
                                    mem[_801 + 96] = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                    require 1 <= s
                                    if not bool(s - 1):
                                        mem[_801 + 128] = 1
                                        mem[_801 + 160] = block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_801 + 160]:
                                                    require (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]) / mem[_801 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600) - 365
                                                    mem[_801 + 160] = (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_801 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= 0
                                                if mem[_801 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160] / mem[_801 + 160] == -block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                                    mem[_801 + 160] = -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_801 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        if uint256(loans[_603].field_0):
                                            require mem[_801 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_801 + 160]
                                            require 365^s * (10000 / uint256(loans[_603].field_256))^s
                                            require mem[_801 + 160] * uint256(loans[_603].field_0) / 365^s * (10000 / uint256(loans[_603].field_256))^s >= 0
                                            t = 1
                                            t = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                            t = mem[_801 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            require 365^s * (10000 / uint256(loans[_603].field_256))^s
                                            require 0 / 365^s * (10000 / uint256(loans[_603].field_256))^s >= 0
                                            t = 1
                                            t = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                            t = mem[_801 + 160]
                                            s = s + 1
                                            continue 
                                    else:
                                        mem[_801 + 128] = 0
                                        mem[_801 + 160] = block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_801 + 160]:
                                                    require (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]) / mem[_801 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600) - 365
                                                    mem[_801 + 160] = (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_801 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= 0
                                                if mem[_801 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160] / mem[_801 + 160] == -block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                                    mem[_801 + 160] = -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_801 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        if uint256(loans[_603].field_0):
                                            require mem[_801 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_801 + 160]
                                            require 365^s * (10000 / uint256(loans[_603].field_256))^s
                                            require mem[_801 + 160] * uint256(loans[_603].field_0) / 365^s * (10000 / uint256(loans[_603].field_256))^s <= 0
                                            t = 0
                                            t = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                            t = mem[_801 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            require 365^s * (10000 / uint256(loans[_603].field_256))^s
                                            require 0 / 365^s * (10000 / uint256(loans[_603].field_256))^s <= 0
                                            t = 0
                                            t = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                            t = mem[_801 + 160]
                                            s = s + 1
                                            continue 
                                else:
                                    require 1 <= s
                                    if not bool(s - 1):
                                        mem[_801 + 160] = block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_801 + 160]:
                                                    require (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]) / mem[_801 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600) - 365
                                                    mem[_801 + 160] = (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_801 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= 0
                                                if mem[_801 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160] / mem[_801 + 160] == -block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                                    mem[_801 + 160] = -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_801 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        require uint256(loans[_603].field_0)
                                        require mem[_801 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_801 + 160]
                                        revert
                                    else:
                                        mem[_801 + 160] = block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                        t = 2
                                        while t <= s:
                                            require 1 <= t
                                            if t - 1:
                                                require (365 * t) - 365 / t - 1 == 365
                                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= (365 * t) - 365
                                                if mem[_801 + 160]:
                                                    require (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]) / mem[_801 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600) - 365
                                                    mem[_801 + 160] = (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160])
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_801 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                            else:
                                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= 0
                                                if mem[_801 + 160]:
                                                    require -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160] / mem[_801 + 160] == -block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                                    mem[_801 + 160] = -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]
                                                    t = t + 1
                                                    continue 
                                                else:
                                                    mem[_801 + 160] = 0
                                                    t = t + 1
                                                    continue 
                                        require uint256(loans[_603].field_0)
                                        require mem[_801 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_801 + 160]
                                        revert
                            else:
                                require 1 <= s
                                if not bool(s - 1):
                                    mem[_801 + 160] = block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        if t - 1:
                                            require (365 * t) - 365 / t - 1 == 365
                                            require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= (365 * t) - 365
                                            if mem[_801 + 160]:
                                                require (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]) / mem[_801 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600) - 365
                                                mem[_801 + 160] = (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160])
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_801 + 160] = 0
                                                t = t + 1
                                                continue 
                                        else:
                                            require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= 0
                                            if mem[_801 + 160]:
                                                require -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160] / mem[_801 + 160] == -block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                                mem[_801 + 160] = -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_801 + 160] = 0
                                                t = t + 1
                                                continue 
                                    require uint256(loans[_603].field_0)
                                    require mem[_801 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_801 + 160]
                                    revert
                                else:
                                    mem[_801 + 160] = block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        if t - 1:
                                            require (365 * t) - 365 / t - 1 == 365
                                            require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= (365 * t) - 365
                                            if mem[_801 + 160]:
                                                require (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]) / mem[_801 + 160] == (365 * t) + -(block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600) - 365
                                                mem[_801 + 160] = (-365 * mem[_801 + 160]) + (365 * t * mem[_801 + 160]) - (block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160])
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_801 + 160] = 0
                                                t = t + 1
                                                continue 
                                        else:
                                            require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 <= 0
                                            if mem[_801 + 160]:
                                                require -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160] / mem[_801 + 160] == -block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                                mem[_801 + 160] = -1 * block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * mem[_801 + 160]
                                                t = t + 1
                                                continue 
                                            else:
                                                mem[_801 + 160] = 0
                                                t = t + 1
                                                continue 
                                    require uint256(loans[_603].field_0)
                                    require mem[_801 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_801 + 160]
                                    revert
                        else:
                            if 10000 / uint256(loans[_603].field_256):
                                require 365 * 10000 / uint256(loans[_603].field_256) / 10000 / uint256(loans[_603].field_256) == 365
                                if uint256(loans[_603].field_0):
                                    require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                    require 365 * 10000 / uint256(loans[_603].field_256)
                                    require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * uint256(loans[_603].field_0) / 365 * 10000 / uint256(loans[_603].field_256) >= 0
                                    t = 1
                                    t = 365 * 10000 / uint256(loans[_603].field_256)
                                    t = block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                    s = s + 1
                                    continue 
                                else:
                                    require 365 * 10000 / uint256(loans[_603].field_256)
                                    require 0 / 365 * 10000 / uint256(loans[_603].field_256) >= 0
                                    t = 1
                                    t = 365 * 10000 / uint256(loans[_603].field_256)
                                    t = block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                    s = s + 1
                                    continue 
                            else:
                                require uint256(loans[_603].field_0)
                                require block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600 * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == block.timestamp - uint256(loans[_603].field_1536) / 24 * 3600
                                revert
                    else:
                        if uint256(loans[_603].field_0):
                            require uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == 1
                            require uint256(loans[_603].field_0) >= 0
                            t = 1
                            t = 1
                            t = 1
                            s = s + 1
                            continue 
                        else:
                            t = 1
                            t = 1
                            t = 1
                            s = s + 1
                            continue 
                require idx < mem[_133]
                _793 = mem[_133 + (32 * idx) + 32]
                _794 = mem[_592 + 64]
                require mem[_133 + (32 * idx) + 32] + mem[_592 + 64] >= mem[_592 + 64]
                require idx < mem[_132]
                _809 = mem[(32 * idx) + _132 + 32]
                require mem[(32 * idx) + _132 + 32] < loans.length
                require uint256(loans[mem[(32 * idx) + _132 + 32]].field_512) <= mem[_133 + (32 * idx) + 32] + mem[_592 + 64]
                require mem[(32 * idx) + _132 + 32] < loans.length
                uint256(loans[mem[(32 * idx) + _132 + 32]].field_512) = mem[_133 + (32 * idx) + 32] + mem[_592 + 64]
                mem[0] = 27
                mem[mem[64] + 4] = address(loans[mem[(32 * idx) + _132 + 32]].field_1280)
                mem[mem[64] + 36] = _793 + _794 - uint256(loans[_809].field_512)
                mem[mem[64] + 68] = _809
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xee1e5a9d with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _793 + _794 - uint256(loans[_809].field_512), _809
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if not _793 + _794:
                    require idx < mem[_132]
                    require mem[_132 + (32 * idx) + 32] < loans.length
                    mem[0] = 27
                    uint256(loans[mem[_132 + (32 * idx) + 32]].field_0) = 0
                    if mem[_592 + 140 len 20] == address(ext_call.return_data[0]):
                        call msg.sender with:
                           value mem[_592 + 96] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x35163b43 with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[0])
                        _978 = mem[_592 + 96]
                        _979 = mem[64]
                        mem[mem[64] + 36] = mem[_592 + 140 len 20]
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _978
                        _980 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_980 + 32] = 0xd1660f9900000000000000000000000000000000000000000000000000000000 or mem[_980 + 36 len 28]
                        _983 = mem[_980]
                        s = 0
                        while s < _983:
                            mem[s + _979 + 132] = mem[s + _980 + 32]
                            s = s + 32
                            continue 
                        if not _983 % 32:
                            delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _983 + _979 + -mem[64] + 128]
                        else:
                            mem[floor32(_983) + _979 + 132] = mem[floor32(_983) + _979 + -(_983 % 32) + 164 len _983 % 32]
                            delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_983) + _979 + -mem[64] + 160]
                        if not delegate.return_code:
                            revert with 0, 'safeTransfer() failed.'
                idx = idx + 1
                s = _793 + _794
                s = _592
                continue 
            t = 0
            t = 0
            t = 0
            s = 0
            while s < 18:
                _788 = mem[64]
                mem[64] = mem[64] + 192
                mem[_788 len 192] = code.data[9411 len 192]
                if s:
                    if s != 1:
                        _802 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_802] = (10000 / uint256(loans[_603].field_256))^s
                        mem[_802 + 32] = 365^s
                        t = 1
                        while t <= s:
                            require t == t
                            t = t + 1
                            continue 
                        mem[_802 + 64] = 1
                        if (10000 / uint256(loans[_603].field_256))^s:
                            require (10000 / uint256(loans[_603].field_256))^s / (10000 / uint256(loans[_603].field_256))^s == 1
                            if (10000 / uint256(loans[_603].field_256))^s:
                                require 365^s * (10000 / uint256(loans[_603].field_256))^s / (10000 / uint256(loans[_603].field_256))^s == 365^s
                                mem[_802 + 96] = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                require 1 <= s
                                if not bool(s - 1):
                                    mem[_802 + 128] = 1
                                    mem[_802 + 160] = 1
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        require t - 1
                                        require (365 * t) - 365 / t - 1 == 365
                                        require 1 <= (365 * t) - 365
                                        if mem[_802 + 160]:
                                            require (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160]) / mem[_802 + 160] == (365 * t) - 366
                                            mem[_802 + 160] = (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160])
                                            t = t + 1
                                            continue 
                                        else:
                                            mem[_802 + 160] = 0
                                            t = t + 1
                                            continue 
                                    if uint256(loans[_603].field_0):
                                        require mem[_802 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_802 + 160]
                                        require 365^s * (10000 / uint256(loans[_603].field_256))^s
                                        require mem[_802 + 160] * uint256(loans[_603].field_0) / 365^s * (10000 / uint256(loans[_603].field_256))^s >= 0
                                        t = 1
                                        t = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                        t = mem[_802 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        require 365^s * (10000 / uint256(loans[_603].field_256))^s
                                        require 0 / 365^s * (10000 / uint256(loans[_603].field_256))^s >= 0
                                        t = 1
                                        t = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                        t = mem[_802 + 160]
                                        s = s + 1
                                        continue 
                                else:
                                    mem[_802 + 128] = 0
                                    mem[_802 + 160] = 1
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        require t - 1
                                        require (365 * t) - 365 / t - 1 == 365
                                        require 1 <= (365 * t) - 365
                                        if mem[_802 + 160]:
                                            require (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160]) / mem[_802 + 160] == (365 * t) - 366
                                            mem[_802 + 160] = (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160])
                                            t = t + 1
                                            continue 
                                        else:
                                            mem[_802 + 160] = 0
                                            t = t + 1
                                            continue 
                                    if uint256(loans[_603].field_0):
                                        require mem[_802 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_802 + 160]
                                        require 365^s * (10000 / uint256(loans[_603].field_256))^s
                                        require mem[_802 + 160] * uint256(loans[_603].field_0) / 365^s * (10000 / uint256(loans[_603].field_256))^s <= 0
                                        t = 0
                                        t = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                        t = mem[_802 + 160]
                                        s = s + 1
                                        continue 
                                    else:
                                        require 365^s * (10000 / uint256(loans[_603].field_256))^s
                                        require 0 / 365^s * (10000 / uint256(loans[_603].field_256))^s <= 0
                                        t = 0
                                        t = 365^s * (10000 / uint256(loans[_603].field_256))^s
                                        t = mem[_802 + 160]
                                        s = s + 1
                                        continue 
                            else:
                                require 1 <= s
                                if not bool(s - 1):
                                    mem[_802 + 160] = 1
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        require t - 1
                                        require (365 * t) - 365 / t - 1 == 365
                                        require 1 <= (365 * t) - 365
                                        if mem[_802 + 160]:
                                            require (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160]) / mem[_802 + 160] == (365 * t) - 366
                                            mem[_802 + 160] = (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160])
                                            t = t + 1
                                            continue 
                                        else:
                                            mem[_802 + 160] = 0
                                            t = t + 1
                                            continue 
                                    require uint256(loans[_603].field_0)
                                    require mem[_802 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_802 + 160]
                                    revert
                                else:
                                    mem[_802 + 160] = 1
                                    t = 2
                                    while t <= s:
                                        require 1 <= t
                                        require t - 1
                                        require (365 * t) - 365 / t - 1 == 365
                                        require 1 <= (365 * t) - 365
                                        if mem[_802 + 160]:
                                            require (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160]) / mem[_802 + 160] == (365 * t) - 366
                                            mem[_802 + 160] = (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160])
                                            t = t + 1
                                            continue 
                                        else:
                                            mem[_802 + 160] = 0
                                            t = t + 1
                                            continue 
                                    require uint256(loans[_603].field_0)
                                    require mem[_802 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_802 + 160]
                                    revert
                        else:
                            require 1 <= s
                            if not bool(s - 1):
                                mem[_802 + 160] = 1
                                t = 2
                                while t <= s:
                                    require 1 <= t
                                    require t - 1
                                    require (365 * t) - 365 / t - 1 == 365
                                    require 1 <= (365 * t) - 365
                                    if mem[_802 + 160]:
                                        require (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160]) / mem[_802 + 160] == (365 * t) - 366
                                        mem[_802 + 160] = (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160])
                                        t = t + 1
                                        continue 
                                    else:
                                        mem[_802 + 160] = 0
                                        t = t + 1
                                        continue 
                                require uint256(loans[_603].field_0)
                                require mem[_802 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_802 + 160]
                                revert
                            else:
                                mem[_802 + 160] = 1
                                t = 2
                                while t <= s:
                                    require 1 <= t
                                    require t - 1
                                    require (365 * t) - 365 / t - 1 == 365
                                    require 1 <= (365 * t) - 365
                                    if mem[_802 + 160]:
                                        require (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160]) / mem[_802 + 160] == (365 * t) - 366
                                        mem[_802 + 160] = (-366 * mem[_802 + 160]) + (365 * t * mem[_802 + 160])
                                        t = t + 1
                                        continue 
                                    else:
                                        mem[_802 + 160] = 0
                                        t = t + 1
                                        continue 
                                require uint256(loans[_603].field_0)
                                require mem[_802 + 160] * uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == mem[_802 + 160]
                                revert
                    else:
                        if 10000 / uint256(loans[_603].field_256):
                            require 365 * 10000 / uint256(loans[_603].field_256) / 10000 / uint256(loans[_603].field_256) == 365
                            if uint256(loans[_603].field_0):
                                require uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == 1
                                require 365 * 10000 / uint256(loans[_603].field_256)
                                require uint256(loans[_603].field_0) / 365 * 10000 / uint256(loans[_603].field_256) >= 0
                                t = 1
                                t = 365 * 10000 / uint256(loans[_603].field_256)
                                t = 1
                                s = s + 1
                                continue 
                            else:
                                require 365 * 10000 / uint256(loans[_603].field_256)
                                require 0 / 365 * 10000 / uint256(loans[_603].field_256) >= 0
                                t = 1
                                t = 365 * 10000 / uint256(loans[_603].field_256)
                                t = 1
                                s = s + 1
                                continue 
                        else:
                            require uint256(loans[_603].field_0)
                            require uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == 1
                            revert
                else:
                    if uint256(loans[_603].field_0):
                        require uint256(loans[_603].field_0) / uint256(loans[_603].field_0) == 1
                        require uint256(loans[_603].field_0) >= 0
                        t = 1
                        t = 1
                        t = 1
                        s = s + 1
                        continue 
                    else:
                        t = 1
                        t = 1
                        t = 1
                        s = s + 1
                        continue 
            require idx < mem[_133]
            _795 = mem[_133 + (32 * idx) + 32]
            _796 = mem[_592 + 64]
            require mem[_133 + (32 * idx) + 32] + mem[_592 + 64] >= mem[_592 + 64]
            require idx < mem[_132]
            _810 = mem[(32 * idx) + _132 + 32]
            require mem[(32 * idx) + _132 + 32] < loans.length
            require uint256(loans[mem[(32 * idx) + _132 + 32]].field_512) <= mem[_133 + (32 * idx) + 32] + mem[_592 + 64]
            require mem[(32 * idx) + _132 + 32] < loans.length
            uint256(loans[mem[(32 * idx) + _132 + 32]].field_512) = mem[_133 + (32 * idx) + 32] + mem[_592 + 64]
            mem[0] = 27
            mem[mem[64] + 4] = address(loans[mem[(32 * idx) + _132 + 32]].field_1280)
            mem[mem[64] + 36] = _795 + _796 - uint256(loans[_810].field_512)
            mem[mem[64] + 68] = _810
            require ext_code.size(sub_9ff78c30Address)
            call sub_9ff78c30Address.0xee1e5a9d with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _795 + _796 - uint256(loans[_810].field_512), _810
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not _795 + _796:
                require idx < mem[_132]
                require mem[_132 + (32 * idx) + 32] < loans.length
                mem[0] = 27
                uint256(loans[mem[_132 + (32 * idx) + 32]].field_0) = 0
                if mem[_592 + 140 len 20] == address(ext_call.return_data[0]):
                    call msg.sender with:
                       value mem[_592 + 96] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x35163b43 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[0])
                    _991 = mem[_592 + 96]
                    _992 = mem[64]
                    mem[mem[64] + 36] = mem[_592 + 140 len 20]
                    mem[mem[64] + 68] = msg.sender
                    mem[mem[64] + 100] = _991
                    _993 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_993 + 32] = 0xd1660f9900000000000000000000000000000000000000000000000000000000 or mem[_993 + 36 len 28]
                    _996 = mem[_993]
                    s = 0
                    while s < _996:
                        mem[s + _992 + 132] = mem[s + _993 + 32]
                        s = s + 32
                        continue 
                    if not _996 % 32:
                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _996 + _992 + -mem[64] + 128]
                    else:
                        mem[floor32(_996) + _992 + 132] = mem[floor32(_996) + _992 + -(_996 % 32) + 164 len _996 % 32]
                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_996) + _992 + -mem[64] + 160]
                    if not delegate.return_code:
                        revert with 0, 'safeTransfer() failed.'
            idx = idx + 1
            s = _795 + _796
            s = _592
            continue 
    return 0
}



}
