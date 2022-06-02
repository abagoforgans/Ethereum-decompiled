contract main {




// =====================  Runtime code  =====================


address owner;
array of address moderators;
mapping of address stor99;

function owner() {
    return owner
}

function moderators(uint256 arg1) {
    require arg1 < moderators.length
    return moderators[arg1]
}

function _fallback() payable {
    revert with 0, 'Transactions is not allow!'
}

function ChangeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner!'
    if arg1:
        owner = arg1
}

function AddModerator(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner!'
    if arg1:
        idx = 0
        while idx < moderators.length:
            mem[0] = 1
            if moderators[idx] != arg1:
                idx = idx + 1
                continue 
        moderators.length++
        moderators[moderators.length] = arg1
}

function sub_38c6ed17(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 2)
    mem[ceil32(arg2.length) + 128] = address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_e81645b6(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function RemoveModerator(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner!'
    idx = 0
    while idx < moderators.length:
        mem[0] = 1
        if moderators[idx] != arg1:
            idx = idx + 1
            continue 
        if idx < moderators.length:
            require moderators.length - 1 < moderators.length
            require idx < moderators.length
            moderators[idx] = moderators[moderators.length]
            require moderators.length - 1 < moderators.length
            moderators[moderators.length] = 0
            moderators.length--
            if moderators.length > moderators.length - 1:
                idx = moderators.length + sha3(1) - 1
                while sha3(1) + moderators.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
}

function sub_66a081a6(?) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[0] = msg.sender
    mem[32] = 2
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + arg3.length + 128] = sha3(msg.sender, 2)
    if address(stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]):
        revert with 0, 'Can't change reference address'
    if owner != msg.sender:
        idx = 0
        while idx < moderators.length:
            mem[0] = 1
            if moderators[idx] != msg.sender:
                idx = idx + 1
                continue 
            s = 128
            t = ceil32(arg3.length) + 128
            idx = arg3.length
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or mem[floor32(arg3.length) + 128] and !(256^(-(arg3.length % 32) + 32) - 1)
            mem[ceil32(arg3.length) + arg3.length + 128] = sha3(address(arg1), 2)
            address(stor[sha3(mem[ceil32(arg3.length) + 128 len arg3.length + 32])]) = arg2
        revert with 0, 'Must be moderator!'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + arg3.length + 128] = sha3(address(arg1), 2)
    address(stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]) = arg2
}

function sub_020e1ffc(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        idx = 0
        while idx < moderators.length:
            mem[0] = 1
            if moderators[idx] != msg.sender:
                idx = idx + 1
                continue 
            if arg4:
                s = 128
                t = ceil32(arg1.length) + 128
                idx = arg1.length
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or mem[floor32(arg1.length) + 128] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
                _174 = sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])
                s = 128
                t = ceil32(arg1.length) + 128
                idx = arg1.length
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or mem[floor32(arg1.length) + 128] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
                uint256(stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])]) = uint256(stor[_174]) + arg3
            else:
                s = 128
                t = ceil32(arg1.length) + 128
                idx = arg1.length
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or mem[floor32(arg1.length) + 128] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
                require uint256(stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])]) >= arg3
                s = 128
                t = ceil32(arg1.length) + 128
                idx = arg1.length
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or mem[floor32(arg1.length) + 128] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
                _211 = sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])
                s = 128
                t = ceil32(arg1.length) + 128
                idx = arg1.length
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or mem[floor32(arg1.length) + 128] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
                uint256(stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])]) = uint256(stor[_211]) - arg3
        revert with 0, 'Must be moderator!'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
    if arg4:
        _89 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = uint256(stor[_89]) + arg3
    else:
        require uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) >= arg3
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
        _157 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(arg2), 3)
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = uint256(stor[_157]) - arg3
}



}
