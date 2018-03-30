package arm;

import iron.object.Object;
import iron.system.Input;
import iron.Scene;
import armory.trait.physics.RigidBody;

class SpawnBox extends iron.Trait {
	public function new() {
		super();

		notifyOnUpdate(function() {
			if (Input.getKeyboard().started("f")) {
				Scene.active.spawnObject("Box", null, function(o:Object) {
					o.transform.loc.setFrom(object.transform.loc);
					o.getTrait(RigidBody).syncTransform();
				});
			}
		});
	}
}
