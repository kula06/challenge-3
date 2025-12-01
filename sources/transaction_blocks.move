module transaction_blocks::transaction_blocks;

use sui::event;

public struct MoveObjectEvent has copy, drop {
    id: ID
}

public fun emit_object<T: key>(obj: &T) {
    event::emit(MoveObjectEvent {
        id: object::id(obj)
    });
}