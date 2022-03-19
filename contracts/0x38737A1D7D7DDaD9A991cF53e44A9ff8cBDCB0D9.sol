contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3899]




// =====================  Runtime code  =====================


array of struct stor0;
mapping of struct name;

function getName(address arg1) payable {
    return name[address(arg1)][1][0 len name[address(arg1)][1].length].field_0
}

function registered(address arg1) payable {
    mem[224] = name[arg1][1].field_0
    idx = 224
    s = 0
    while name[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = name[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[name[arg1][1].length + (floor32(name[arg1][1].length - 1) + -name[arg1][1].length + 32 % 32) + 224] = name[arg1][2].length
    mem[name[arg1][1].length + (floor32(name[arg1][1].length - 1) + -name[arg1][1].length + 32 % 32) + 256] = name[arg1][2].field_0
    idx = name[arg1][1].length + (floor32(name[arg1][1].length - 1) + -name[arg1][1].length + 32 % 32) + 256
    s = 0
    while name[arg1][1].length + (floor32(name[arg1][1].length - 1) + -name[arg1][1].length + 32 % 32) + name[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = name[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return name[arg1].field_0, 
           Array(len=name[arg1][1].length, data=mem[224 len name[arg1][1].length + (floor32(name[arg1][1].length - 1) + -name[arg1][1].length + 32 % 32) + name[arg1][2].length + (floor32(name[arg1][2].length - 1) + -name[arg1][2].length + 32 % 32) + 32]),
           name[arg1][1].length + (floor32(name[arg1][1].length - 1) + -name[arg1][1].length + 32 % 32) + 128
}

function sub_d94110a4(?) payable {
    return name[address(arg1)][2][0 len name[address(arg1)][2].length].field_0
}

function getOwner(address arg1) payable {
    return name[address(arg1)].field_0
}

function _fallback() payable {
  stop
}

function getCampaigns() payable {
    if stor0.length:
        mem[160] = address(stor0.field_0)
        idx = 160
        s = 0
        while (32 * stor0.length) + 128 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0.length, data=mem[160 len 32 * stor0.length])
}

function register(address arg1, string arg2, string arg3) payable {
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 2307 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[1848 len 2051], address(arg1), 64, arg3.length, arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + 2307] = mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2339 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[1848 len 2051], address(arg1), 64, arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg3.length + 2307 len -(arg3.length % 32) + 32]
    name[address(create.new_address)].field_0 = arg1 or Mask(96, 160, name[address(create.new_address)].field_0)
    name[address(create.new_address)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    name[address(create.new_address)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = create.new_address or Mask(96, 160, stor0[stor0.length].field_0)
}



}
