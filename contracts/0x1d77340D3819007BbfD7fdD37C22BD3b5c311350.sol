contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor6;

function _fallback() payable {
    stor6 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor0 = 255
    stor1 = 10^17
    stor4 = block.timestamp - 15300
    return code.data[75 len 4680]
}



// =====================  Runtime code  =====================


uint8 limitOfMinutes;
uint256 stor0;
uint256 cost;
array of uint256 announcement;
address stor3;
uint256 stor4;
mapping of struct stor5;
bool stor6;
uint256 stor6;
uint256 stor7;

function Announcement() payable {
    return announcement[0 len announcement.length]
}

function LimitOfMinutes() payable {
    return uint8(limitOfMinutes)
}

function Cost() payable {
    return cost
}

function _fallback() payable {
  stop
}

function WhatWasMyHash(bytes32 arg1) payable {
    return sha3(arg1)
}

function OwnerAnnounce(string arg1) payable {
    require stor3 == msg.sender
    announcement[] = Array(len=arg1.length, data=arg1[all])
}

function announce(bytes32 arg1) payable {
    require 0 == msg.value
    require stor5[arg1].field_776
    stor5[arg1].field_768 = uint8((arg1 % 3) + 1)
    stor5[arg1].field_512 = block.timestamp
}

function SetInternalValues(uint8 arg1, uint256 arg2) payable {
    require stor3 == msg.sender
    uint256(stor0) = arg1 or Mask(248, 8, uint256(stor0))
    if arg2 != cost:
        cost = arg2
        stor4 = block.timestamp
}

function play(bytes32 arg1) payable {
    require block.timestamp >= uint8(60 * uint8(limitOfMinutes)) + stor4
    require msg.value == cost
    require not stor5[arg1].field_256
    require arg1
    stor5[arg1].field_256 = msg.sender or Mask(96, 160, stor5[arg1].field_256)
    stor5[arg1].field_776 = 1
    if bool(stor6) != 1:
        stor7 = arg1
    else:
        stor5[arg1].field_0 = stor7
        stor5[stor7].field_0 = arg1
    stor5[arg1].field_512 = block.timestamp
    uint256(stor6)++
}

function CreateHash(uint8 arg1, string arg2) payable {
    mem[ceil32(arg2.length) + 160 len arg2.length] = arg2[all]
    if 0 == arg1:
        mem[ceil32(arg2.length) + 416] = mem[ceil32(arg2.length) + 435 len 13]
        return 0, 0, 96, 45, 'enter 1 for Rock, 2 for Paper, 3', ' for Scissors', mem[ceil32(arg2.length) + 416]
    if stor5[(3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3)].field_256:
        mem[ceil32(arg2.length) + 416] = 0, mem[ceil32(arg2.length) + 446 len 2]
        return sha3((3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3)), 
               (3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3),
               Array(len=62, data='someone have already used this r', 'andom string - try another one', mem[ceil32(arg2.length) + 416])
    if 0 == (3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3) % 3:
        mem[ceil32(arg2.length) + 352] = mem[ceil32(arg2.length) + 380 len 4]
        return sha3((3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3)), 
               (3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3),
               Array(len=4, data=mem[ceil32(arg2.length) + 352])
    if 1 == (3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3) % 3:
        mem[ceil32(arg2.length) + 352] = mem[ceil32(arg2.length) + 379 len 5]
        return sha3((3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3)), 
               (3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3),
               Array(len=5, data=mem[ceil32(arg2.length) + 352])
    mem[ceil32(arg2.length) + 352] = mem[ceil32(arg2.length) + 376 len 8]
    return sha3((3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3)), 
           (3 * sha3(arg2[all]) / 3) + uint8(uint8(arg1 - 1) % 3),
           Array(len=8, data=mem[ceil32(arg2.length) + 352])
}

function IsPayoutReady__InfoFunction(bytes32 arg1) payable {
    if 0 == arg1:
        mem[256] = mem[273 len 15]
        return Array(len=15, data=mem[256])
    if not stor5[arg1].field_256:
        mem[320] = mem[341 len 11]
        return Array(len=43, data='you can send this hash and doubl', 'e your ETH!', mem[320])
    if stor5[arg1].field_256:
        if not stor5[arg1].field_776:
            mem[256] = Mask(32, 112, 'this bet is burned') >> 112, mem[274 len 14]
            return Array(len=18, data=mem[256])
    if not stor5[arg1].field_0:
        if block.timestamp < uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512:
            mem[256] = Mask(80, 88, 'wait for other player') >> 88, mem[277 len 11]
            return Array(len=21, data=mem[256])
    if not stor5[arg1].field_0:
        mem[320] = mem[344 len 8]
        return Array(len=40, data='no one played, use withdraw() fo', 'r refund', mem[320])
    if block.timestamp < uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512:
        if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))))):
            if block.timestamp < uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512:
                return 'you can announce your SecretRand'
        if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))))):
            mem[384] = 0, mem[411 len 5]
            return Array(len=91, data='you have failed to announce your', ' SecretRand but still you can tr', 'y before opponent withdraws' >> 256, mem[384]), 
        if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))):
            if block.timestamp < uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512:
                mem[256] = Mask(192, 32, 'wait for opponent SecretRand') >> 32, mem[284 len 4]
                return Array(len=28, data=mem[256])
    else:
        if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))))):
            if block.timestamp < stor5[stor5[arg1].field_0].field_512 + uint8(60 * uint8(limitOfMinutes)):
                return 'you can announce your SecretRand'
        if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))))):
            mem[384] = 0, mem[411 len 5]
            return Array(len=91, data='you have failed to announce your', ' SecretRand but still you can tr', 'y before opponent withdraws' >> 256, mem[384]), 
        if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))):
            if block.timestamp < stor5[stor5[arg1].field_0].field_512 + uint8(60 * uint8(limitOfMinutes)):
                mem[256] = Mask(192, 32, 'wait for opponent SecretRand') >> 32, mem[284 len 4]
                return Array(len=28, data=mem[256])
    if 0 == ('signextend', 0, ('add', ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))), ('mul', -1, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))))):
        if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))):
            mem[320] = mem[341 len 11]
            return Array(len=43, data='you have won! now you can withdr', 'aw your ETH', mem[320])
        mem[320] = mem[346 len 6]
        return Array(len=38, data='Draw happend! withdraw back your', ' funds', mem[320])
    if ('signextend', 0, ('add', ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))), ('mul', -1, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))))) != 1:
        if ('signextend', 0, ('add', ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))), ('mul', -1, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))))) != -2:
            if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))):
                mem[320] = mem[341 len 11]
                return Array(len=43, data='you have won! now you can withdr', 'aw your ETH', mem[320])
            mem[256] = Mask(128, 64, 'you have lost, try again') >> 64, mem[280 len 8]
            return Array(len=24, data=mem[256])
    mem[320] = mem[341 len 11]
    return Array(len=43, data='you have won! now you can withdr', 'aw your ETH', mem[320])
}

function withdraw(bytes32 arg1) payable {
    require 0 == msg.value
    require bool(stor5[arg1].field_776) != 0
    if not stor5[arg1].field_0:
        if stor5[arg1].field_0:
            require stor5[arg1].field_0
            require not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5))))))
            require ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))))
            require block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512
            require block.timestamp > stor5[stor5[arg1].field_0].field_512 + uint8(60 * uint8(limitOfMinutes))
            stor5[arg1].field_776 = 0
            stor5[stor5[arg1].field_0].field_776 = 0
            call stor5[arg1].field_256 with:
               value 198 * cost / 100 wei
                 gas 0 wei
            require ext_call.success
            call stor3 with:
               value 2 * cost / 100 wei
                 gas 0 wei
        else:
            if block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512:
                stor5[arg1].field_776 = 0
                call stor5[arg1].field_256 with:
                   value cost wei
                     gas 0 wei
                require ext_call.success
                uint256(stor6)--
            else:
                require stor5[arg1].field_0
                require not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5))))))
                require ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))))
                require block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512
                require block.timestamp > stor5[stor5[arg1].field_0].field_512 + uint8(60 * uint8(limitOfMinutes))
                stor5[arg1].field_776 = 0
                stor5[stor5[arg1].field_0].field_776 = 0
                call stor5[arg1].field_256 with:
                   value 198 * cost / 100 wei
                     gas 0 wei
                require ext_call.success
                call stor3 with:
                   value 2 * cost / 100 wei
                     gas 0 wei
    else:
        if not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))):
            if stor5[arg1].field_0:
                require stor5[arg1].field_0
                require not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5))))))
                require ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))))
                require block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512
                require block.timestamp > stor5[stor5[arg1].field_0].field_512 + uint8(60 * uint8(limitOfMinutes))
                stor5[arg1].field_776 = 0
                stor5[stor5[arg1].field_0].field_776 = 0
                call stor5[arg1].field_256 with:
                   value 198 * cost / 100 wei
                     gas 0 wei
                require ext_call.success
                call stor3 with:
                   value 2 * cost / 100 wei
                     gas 0 wei
            else:
                if block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512:
                    stor5[arg1].field_776 = 0
                    call stor5[arg1].field_256 with:
                       value cost wei
                         gas 0 wei
                    require ext_call.success
                    uint256(stor6)--
                else:
                    require stor5[arg1].field_0
                    require not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5))))))
                    require ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))))
                    require block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512
                    require block.timestamp > stor5[stor5[arg1].field_0].field_512 + uint8(60 * uint8(limitOfMinutes))
                    stor5[arg1].field_776 = 0
                    stor5[stor5[arg1].field_0].field_776 = 0
                    call stor5[arg1].field_256 with:
                       value 198 * cost / 100 wei
                         gas 0 wei
                    require ext_call.success
                    call stor3 with:
                       value 2 * cost / 100 wei
                         gas 0 wei
        else:
            if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))))):
                if not ('signextend', 0, ('add', ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))), ('mul', -1, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))))):
                    stor5[arg1].field_776 = 0
                    call stor5[arg1].field_256 with:
                       value 99 * cost / 100 wei
                         gas 0 wei
                    require ext_call.success
                    call stor3 with:
                       value cost / 100 wei
                         gas 0 wei
                else:
                    if ('signextend', 0, ('add', ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))), ('mul', -1, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5)))))))) != 1:
                        require -2 == ('signextend', 0, ('add', ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))), ('mul', -1, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5))))))))
                    stor5[arg1].field_776 = 0
                    stor5[stor5[arg1].field_0].field_776 = 0
                    call stor5[arg1].field_256 with:
                       value 198 * cost / 100 wei
                         gas 0 wei
                    require ext_call.success
                    call stor3 with:
                       value 2 * cost / 100 wei
                         gas 0 wei
            else:
                if stor5[arg1].field_0:
                    require stor5[arg1].field_0
                    require not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5))))))
                    require ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))))
                    require block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512
                    require block.timestamp > stor5[stor5[arg1].field_0].field_512 + uint8(60 * uint8(limitOfMinutes))
                    stor5[arg1].field_776 = 0
                    stor5[stor5[arg1].field_0].field_776 = 0
                    call stor5[arg1].field_256 with:
                       value 198 * cost / 100 wei
                         gas 0 wei
                    require ext_call.success
                    call stor3 with:
                       value 2 * cost / 100 wei
                         gas 0 wei
                else:
                    if block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512:
                        stor5[arg1].field_776 = 0
                        call stor5[arg1].field_256 with:
                           value cost wei
                             gas 0 wei
                        require ext_call.success
                        uint256(stor6)--
                    else:
                        require stor5[arg1].field_0
                        require not ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))), ('name', 'stor5', 5))))))
                        require ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))))
                        require block.timestamp > uint8(60 * uint8(limitOfMinutes)) + stor5[arg1].field_512
                        require block.timestamp > stor5[stor5[arg1].field_0].field_512 + uint8(60 * uint8(limitOfMinutes))
                        stor5[arg1].field_776 = 0
                        stor5[stor5[arg1].field_0].field_776 = 0
                        call stor5[arg1].field_256 with:
                           value 198 * cost / 100 wei
                             gas 0 wei
                        require ext_call.success
                        call stor3 with:
                           value 2 * cost / 100 wei
                             gas 0 wei
}



}
