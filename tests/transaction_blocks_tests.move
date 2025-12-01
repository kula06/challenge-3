#[test_only]
module transaction_blocks::transaction_blocks_tests {
    use transaction_blocks::transaction_blocks;

    public struct TestObject has key, store {
        id: UID,
    }

    fun new_test_object(ctx: &mut tx_context::TxContext): TestObject {
        TestObject { id: object::new(ctx) }
    }

    #[test]
    fun test_emit_object() {
        let mut ctx = tx_context::dummy();

        let obj = new_test_object(&mut ctx);

        transaction_blocks::emit_object(&obj);

        let TestObject {id} = obj;
        id.delete();
    }
}
