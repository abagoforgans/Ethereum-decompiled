contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint8 stor3; offset 160
uint256 stor3;
uint256 stor4;
array of struct stor7;

function _fallback() payable {
    mem[96 len -5001] = code.data[5964 len -5001]
    mem[64] = -4905
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = mem[128]
    uint256(stor3.field_0) = mem[160]
    uint8(stor3.field_160) = 0
    stor4 = mem[192]
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        mem[0] = 7
        idx = (3 * stor7.length) + 3
        while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 1
            continue 
    mem[64] = -4809
    stor7[stor7.length].field_0 = 'Parent Plant'
    stor[sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)][].field_0 = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor7[stor7.length].field_512 = 1
    return code.data[963 len 5001]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
address stor2;
uint8 stor3;
uint8 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;
array of struct recipients;

function recipients(uint256 arg1) payable {
    require arg1 < recipients.length
    mem[224] = stor[sha3((3 * arg1) + ('name', 'recipients', 7) + 1)].field_0
    idx = 224
    s = 0
    while stor[(3 * arg1) + ('name', 'recipients', 7) + 1].length + 224 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'recipients', 7) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return recipients[arg1].field_0, 
           Array(len=stor[(3 * arg1) + ('name', 'recipients', 7) + 1].length, data=mem[224 len stor[(3 * arg1) + ('name', 'recipients', 7) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'recipients', 7) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'recipients', 7) + 1].length + 32 % 32)]),
           recipients[arg1].field_512
}

function _fallback() payable {
  stop
}

function sub_e570c9ed(?) payable {
    if msg.sender == stor0:
        stor5 += arg1
        if stor5 >= stor4:
            stor5 = 0
            create contract with 0 wei
                            code: code.data[2233 len 2768]
            emit 0x712fa027: code.data[2233 len 32], address(create.new_address), 24, 'Submission Phase started'
}

function addChild(address arg1) payable {
    if msg.sender == stor0:
        uint8(stor3.field_160) = 1
        stor6.length++
        if not stor6.length <= stor6.length + 1:
            idx = stor6.length + 1
            while stor6.length > idx:
                stor6[idx] = 0
                idx = idx + 1
                continue 
        stor6[stor6.length] = arg1 or Mask(96, 160, stor6[stor6.length])
}

function plant() payable {
    mem[352] = uint256(stor1.field_0)
    idx = 352
    s = 0
    while stor1.length + 352 > idx + 32:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0, 
           Array(len=stor1.length, data=mem[352 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32)]),
           stor2,
           address(stor3.field_0),
           uint8(stor3.field_0),
           stor4,
           stor5
}

function sub_86f9b943(?) payable {
    if msg.sender == stor0:
        recipients.length++
        if not recipients.length <= recipients.length + 1:
            mem[0] = 7
            idx = (3 * recipients.length) + 3
            while sha3(7) + (3 * recipients.length) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                stor[idx + sha3(mem[0]) + 1] = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                stor[idx + sha3(mem[0]) + 2] = 0
                idx = idx + 1
                continue 
        recipients[recipients.length].field_0 = arg1
        stor[sha3((3 * recipients.length) + ('name', 'recipients', 7) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        recipients[recipients.length].field_512 = arg3
    else:
        if msg.sender == stor2:
            recipients.length++
            if not recipients.length <= recipients.length + 1:
                mem[0] = 7
                idx = (3 * recipients.length) + 3
                while sha3(7) + (3 * recipients.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor[idx + sha3(mem[0]) + 2] = 0
                    idx = idx + 1
                    continue 
            recipients[recipients.length].field_0 = arg1
            stor[sha3((3 * recipients.length) + ('name', 'recipients', 7) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            recipients[recipients.length].field_512 = arg3
}



}
