contract main {




// =====================  Runtime code  =====================


#
#  - bet()
#
const getBalanceContract = eth.balance(this.address)

const sub_7e95b523(?) = 10^18


address owner;
uint256 ethRaised;
uint256 sub_ea56abf2;
mapping of struct stor3;
mapping of uint256 sub_d2a99d4c;
address sub_fedf70e3Address;

function owner() {
    return owner
}

function sub_d2a99d4c(?) {
    require calldata.size - 4 >= 32
    return sub_d2a99d4c[arg1]
}

function sub_ea56abf2(?) {
    return sub_ea56abf2
}

function ethRaised() {
    return ethRaised
}

function sub_fedf70e3(?) {
    return sub_fedf70e3Address
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f0963099(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_fedf70e3Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_667d2ff1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == sub_fedf70e3Address
    call sub_fedf70e3Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function games(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = stor3[arg1][6].field_0
    idx = 128
    s = 0
    while stor3[arg1][6].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor3[arg1].field_0, 
           stor3[arg1].field_256,
           stor3[arg1].field_512,
           stor3[arg1].field_768,
           bool(stor3[arg1].field_1280),
           bool(stor3[arg1].field_1288),
           Array(len=stor3[arg1][6].length, data=mem[128 len ceil32(stor3[arg1][6].length)])
}

function sub_3f791815(?) {
    require calldata.size - 4 >= 32
    if stor3[arg1].field_1024:
        mem[640] = stor3[arg1][4].field_0
        idx = 640
        s = 0
        while (32 * stor3[arg1].field_1024) + 608 > idx:
            mem[idx + 32] = stor3[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor3[arg1].field_1024) + 672] = stor3[arg1][6].field_0
        idx = (32 * stor3[arg1].field_1024) + 672
        s = 0
        while (32 * stor3[arg1].field_1024) + stor3[arg1][6].length + 640 > idx:
            mem[idx + 32] = stor3[arg1][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[(32 * stor3[arg1].field_1024) + 672] = stor3[arg1][6].field_0
        idx = (32 * stor3[arg1].field_1024) + 672
        s = 0
        while (32 * stor3[arg1].field_1024) + stor3[arg1][6].length + 640 > idx:
            mem[idx + 32] = stor3[arg1][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(64 * stor3[arg1].field_1024) + ceil32(stor3[arg1][6].length) + 928] = stor3[arg1][6].length
        mem[(64 * stor3[arg1].field_1024) + ceil32(stor3[arg1][6].length) + 960 len ceil32(stor3[arg1][6].length)] = mem[(32 * stor3[arg1].field_1024) + 672 len ceil32(stor3[arg1][6].length)]
        if ceil32(stor3[arg1][6].length) > stor3[arg1][6].length:
            mem[(64 * stor3[arg1].field_1024) + ceil32(stor3[arg1][6].length) + stor3[arg1][6].length + 960] = 0
    return stor3[arg1].field_0, 
           stor3[arg1].field_256,
           stor3[arg1].field_768,
           bool(stor3[arg1].field_1288),
           Array(len=stor3[arg1].field_1024, data=mem[640 len 32 * stor3[arg1].field_1024], stor3[arg1][6].length, mem[(32 * stor3[arg1].field_1024) + 672 len ceil32(stor3[arg1][6].length)]),
           bool(stor3[arg1].field_1280),
           (32 * stor3[arg1].field_1024) + 256
}

function sub_f72ea9dc(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.value <= 0:
        revert with 0, 'Requires msg.value > 0 && msg.value <= MAX_BET'
    if msg.value > 10^18:
        revert with 0, 'Requires msg.value > 0 && msg.value <= MAX_BET'
    if stor3[stor4[msg.sender]].field_1280:
        revert with 0, 'Requires not started'
    if ('cd', 4).length <= 0:
        revert with 0, 'Requires symbols.length > 0 && symbols.length <= 5'
    if ('cd', 4).length > 5:
        revert with 0, 'Requires symbols.length > 0 && symbols.length <= 5'
    if 1 == ('cd', 4).length:
        if 10 * msg.value > eth.balance(this.address):
            revert with 0, 'require balance of contract >= prize'
        stor3[stor2].field_0 = msg.sender or Mask(96, 160, stor3[stor2].field_0)
        stor3[stor2].field_256 = msg.value
        stor3[stor2].field_512 = block.number
        stor3[stor2].field_768 = 10 * msg.value
        stor3[stor2].field_1024 = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while stor3[stor2].field_1024 > idx:
                stor3[stor2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if 32 * ('cd', 4).length <= 0:
                idx = 0
                while stor3[stor2].field_1024 > idx:
                    stor3[stor2][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[stor2][4].field_0 = mem[128]
                s = 1
                idx = 160
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor3[stor2][s + 4].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, (32 * ('cd', 4).length) - 1) >> 5) + 1
                while stor3[stor2].field_1024 > idx:
                    stor3[stor2][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
        stor3[stor2].field_1280 = 1
        sub_d2a99d4c[msg.sender] = sub_ea56abf2
        sub_ea56abf2++
        emit 0x6dea0ebd: msg.value, 10 * msg.value, block.number, Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length]), msg.sender
    else:
        if 2 == ('cd', 4).length:
            if 5 * msg.value > eth.balance(this.address):
                revert with 0, 'require balance of contract >= prize'
            stor3[stor2].field_0 = msg.sender or Mask(96, 160, stor3[stor2].field_0)
            stor3[stor2].field_256 = msg.value
            stor3[stor2].field_512 = block.number
            stor3[stor2].field_768 = 5 * msg.value
            stor3[stor2].field_1024 = ('cd', 4).length
            if not ('cd', 4).length:
                idx = 0
                while stor3[stor2].field_1024 > idx:
                    stor3[stor2][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if 32 * ('cd', 4).length <= 0:
                    idx = 0
                    while stor3[stor2].field_1024 > idx:
                        stor3[stor2][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[stor2][4].field_0 = mem[128]
                    s = 1
                    idx = 160
                    while (32 * ('cd', 4).length) + 128 > idx:
                        stor3[stor2][s + 4].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = (Mask(251, 0, (32 * ('cd', 4).length) - 1) >> 5) + 1
                    while stor3[stor2].field_1024 > idx:
                        stor3[stor2][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
            stor3[stor2].field_1280 = 1
            sub_d2a99d4c[msg.sender] = sub_ea56abf2
            sub_ea56abf2++
            emit 0x6dea0ebd: msg.value, 5 * msg.value, block.number, Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length]), msg.sender
        else:
            if 3 == ('cd', 4).length:
                if 4 * msg.value > eth.balance(this.address):
                    revert with 0, 'require balance of contract >= prize'
                stor3[stor2].field_0 = msg.sender or Mask(96, 160, stor3[stor2].field_0)
                stor3[stor2].field_256 = msg.value
                stor3[stor2].field_512 = block.number
                stor3[stor2].field_768 = 0
                stor3[stor2].field_770 = Mask(254, 0, msg.value)
                stor3[stor2].field_1024 = ('cd', 4).length
                if not ('cd', 4).length:
                    idx = 0
                    while stor3[stor2].field_1024 > idx:
                        stor3[stor2][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if 32 * ('cd', 4).length <= 0:
                        idx = 0
                        while stor3[stor2].field_1024 > idx:
                            stor3[stor2][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor3[stor2][4].field_0 = mem[128]
                        s = 1
                        idx = 160
                        while (32 * ('cd', 4).length) + 128 > idx:
                            stor3[stor2][s + 4].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = (Mask(251, 0, (32 * ('cd', 4).length) - 1) >> 5) + 1
                        while stor3[stor2].field_1024 > idx:
                            stor3[stor2][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                stor3[stor2].field_1280 = 1
                sub_d2a99d4c[msg.sender] = sub_ea56abf2
                sub_ea56abf2++
                emit 0x6dea0ebd: msg.value, 4 * msg.value, block.number, Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length]), msg.sender
            else:
                if 4 == ('cd', 4).length:
                    if 3 * msg.value > eth.balance(this.address):
                        revert with 0, 'require balance of contract >= prize'
                    stor3[stor2].field_0 = msg.sender or Mask(96, 160, stor3[stor2].field_0)
                    stor3[stor2].field_256 = msg.value
                    stor3[stor2].field_512 = block.number
                    stor3[stor2].field_768 = 3 * msg.value
                    stor3[stor2].field_1024 = ('cd', 4).length
                    if not ('cd', 4).length:
                        idx = 0
                        while stor3[stor2].field_1024 > idx:
                            stor3[stor2][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if 32 * ('cd', 4).length <= 0:
                            idx = 0
                            while stor3[stor2].field_1024 > idx:
                                stor3[stor2][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            stor3[stor2][4].field_0 = mem[128]
                            s = 1
                            idx = 160
                            while (32 * ('cd', 4).length) + 128 > idx:
                                stor3[stor2][s + 4].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = (Mask(251, 0, (32 * ('cd', 4).length) - 1) >> 5) + 1
                            while stor3[stor2].field_1024 > idx:
                                stor3[stor2][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                    stor3[stor2].field_1280 = 1
                    sub_d2a99d4c[msg.sender] = sub_ea56abf2
                    sub_ea56abf2++
                    emit 0x6dea0ebd: msg.value, 3 * msg.value, block.number, Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length]), msg.sender
                else:
                    if ('cd', 4).length != 5:
                        if 0 > eth.balance(this.address):
                            revert with 0, 'require balance of contract >= prize'
                        stor3[stor2].field_0 = msg.sender or Mask(96, 160, stor3[stor2].field_0)
                        stor3[stor2].field_256 = msg.value
                        stor3[stor2].field_512 = block.number
                        stor3[stor2].field_768 = 0
                        stor3[stor2].field_1024 = ('cd', 4).length
                        if not ('cd', 4).length:
                            idx = 0
                            while stor3[stor2].field_1024 > idx:
                                stor3[stor2][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 32 * ('cd', 4).length <= 0:
                                idx = 0
                                while stor3[stor2].field_1024 > idx:
                                    stor3[stor2][idx + 4].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                stor3[stor2][4].field_0 = mem[128]
                                s = 1
                                idx = 160
                                while (32 * ('cd', 4).length) + 128 > idx:
                                    stor3[stor2][s + 4].field_0 = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = (Mask(251, 0, (32 * ('cd', 4).length) - 1) >> 5) + 1
                                while stor3[stor2].field_1024 > idx:
                                    stor3[stor2][idx + 4].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        stor3[stor2].field_1280 = 1
                        sub_d2a99d4c[msg.sender] = sub_ea56abf2
                        sub_ea56abf2++
                        emit 0x6dea0ebd: msg.value, 0, block.number, 128, ('cd', 4).length, mem[128 len 32 * ('cd', 4).length], msg.sender
                    else:
                        if 2 * msg.value > eth.balance(this.address):
                            revert with 0, 'require balance of contract >= prize'
                        stor3[stor2].field_0 = msg.sender or Mask(96, 160, stor3[stor2].field_0)
                        stor3[stor2].field_256 = msg.value
                        stor3[stor2].field_512 = block.number
                        stor3[stor2].field_768 = 0
                        stor3[stor2].field_769 = uint255(msg.value)
                        stor3[stor2].field_1024 = ('cd', 4).length
                        if not ('cd', 4).length:
                            idx = 0
                            while stor3[stor2].field_1024 > idx:
                                stor3[stor2][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 32 * ('cd', 4).length <= 0:
                                idx = 0
                                while stor3[stor2].field_1024 > idx:
                                    stor3[stor2][idx + 4].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                stor3[stor2][4].field_0 = mem[128]
                                s = 1
                                idx = 160
                                while (32 * ('cd', 4).length) + 128 > idx:
                                    stor3[stor2][s + 4].field_0 = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = (Mask(251, 0, (32 * ('cd', 4).length) - 1) >> 5) + 1
                                while stor3[stor2].field_1024 > idx:
                                    stor3[stor2][idx + 4].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        stor3[stor2].field_1280 = 1
                        sub_d2a99d4c[msg.sender] = sub_ea56abf2
                        sub_ea56abf2++
                        emit 0x6dea0ebd: msg.value, 2 * msg.value, block.number, Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length]), msg.sender
}



}
